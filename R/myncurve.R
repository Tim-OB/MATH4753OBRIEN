#' @title N Curve Plot and Area
#'
#' @param mu Average
#' @param sigma Standard Deviation
#' @param a Upper Bound
#'
#' @return Graph of curve and area of the shaded area between curve and x axis
#' @export
#'
#' @examples
#' myncurve(mu=10,sigma=5, a=6)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))

  xcurve = seq(mu-(3*sigma),a,length=1000)
  ycurve = dnorm(xcurve,mean=mu,sd=sigma)

  polygon(c(mu-(3*sigma), xcurve, a),c(0,ycurve,0),col="Red")

  prob = pnorm(a,mu,sigma)
  prob = round(prob,4)
  prob
  text((a + mu)/2, .05 ,paste0("Area = ", prob))
}
