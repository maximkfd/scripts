package ${packageName}.presentation.presenter${dotSubpackage}

import com.arellomobile.mvp.InjectViewState
import com.arellomobile.mvp.MvpPresenter
import ${packageName}.presentation.view${dotSubpackage}.${viewName}
import ru.terrakok.cicerone.Router
import javax.inject.Inject

@InjectViewState
class ${presenterName} @Inject constructor(
    private val router: Router
) : MvpPresenter<${viewName}>() {

}
