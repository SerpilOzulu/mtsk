package com.mtsk.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.apache.hc.client5.http.impl.TunnelRefusedException;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "json:target/cucumber.json",
                "html:target/cucumber/report.html",
                "junit:target/junit/junit-report.xml",
                "rerun:target/rerun.txt",
               "me.jvt.cucumber.report.PrettyReports:target/cucumber",
        },

        features = "src/test/resources/features",
        glue = "com/mtsk/stepDefinitions",
        dryRun = false,
        tags = "@MTSK-432"

)
public class CukesRunner {
}
