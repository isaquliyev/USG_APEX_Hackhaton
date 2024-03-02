function calculateSurvivalRate(deaths, infected) {
  const survivalRate = ((infected - deaths) / infected) * 100;
  let recommendation = '';

  if (survivalRate > 95) {
    recommendation = 'Excellent, the survival rate is extremely high.';
  } else if (survivalRate >= 90) {
    recommendation = 'Excellent, the survival rate is very high.';
  } else if (survivalRate >= 80) {
    recommendation = 'Very good, the survival rate is high.';
  } else if (survivalRate >= 70) {
    recommendation = 'Good, the survival rate is satisfactory.';
  } else if (survivalRate >= 60) {
    recommendation = 'Fair, the survival rate is moderate.';
  } else if (survivalRate >= 50) {
    recommendation = 'Moderate, the survival rate is average.';
  } else if (survivalRate >= 40) {
    recommendation = 'Low, the survival rate is below average.';
  } else if (survivalRate >= 30) {
    recommendation = 'Very low, the survival rate is concerning.';
  } else if (survivalRate >= 20) {
    recommendation = 'Critical, the survival rate is dangerously low.';
  } else if (survivalRate >= 10) {
    recommendation = 'Extremely critical, the survival rate is catastrophic.';
  } else if (survivalRate >= 5) {
    recommendation = 'Nearly fatal, the survival rate is extremely low.';
  } else if (survivalRate >= 1) {
    recommendation = 'Fatal, the survival rate is critically low.';
  } else if (survivalRate >= 0) {
    recommendation = 'Zero, the survival rate is nonexistent.';
  } else {
    recommendation = 'Invalid, the survival rate is less than zero.';
  }

  return { survivalRate, recommendation };
}