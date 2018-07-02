package ${packageName}.ui.fragment${dotSubpackage}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${packageName}.ui.fragment.BaseFragment
import ${packageName}.R
import ${packageName}.presentation.view${dotSubpackage}.${viewName}
import ${packageName}.presentation.presenter${dotSubpackage}.${presenterName}

import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter

import ${packageName}.toothpick.DI
import toothpick.Toothpick

class ${className} : BaseFragment(), ${viewName} {
<#if includeFactory>  
  companion object {
        const val TAG = "${className}"
        
        fun newInstance(): ${className} {
			val fragment: ${className} = ${className}()
			val args: Bundle = Bundle()
			fragment.arguments = args
			return fragment
		}
    }
</#if>

	@InjectPresenter
	lateinit var presenter: ${presenterName}
    
    @ProvidePresenter
    fun providePresenter(): ${presenterName} = 
            Toothpick
                    .openScope(DI.SERVER_SCOPE)
                    .getInstance(${presenterName}::class.java)

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
<#if includeLayout>
        return inflater.inflate(R.layout.${fragmentName}, container, false)
</#if>
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

    }
}
