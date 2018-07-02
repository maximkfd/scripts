package ${packageName}.presentation.view${dotSubpackage}

import ${packageName}.presentation.view.BaseView
import com.arellomobile.mvp.viewstate.strategy.AddToEndSingleStrategy
import com.arellomobile.mvp.viewstate.strategy.StateStrategyType

@StateStrategyType(AddToEndSingleStrategy::class)
interface ${viewName} : BaseView {

}
