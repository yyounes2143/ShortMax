package io.bidmachine.media3.exoplayer.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import cn.a;
import cn.m0;
import cn.r;
/* loaded from: classes8.dex */
public final class PlatformScheduler$PlatformSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        PersistableBundle extras = jobParameters.getExtras();
        int b10 = new Requirements(extras.getInt("requirements")).b(this);
        if (b10 == 0) {
            m0.p1(this, new Intent((String) a.e(extras.getString("service_action"))).setPackage((String) a.e(extras.getString("service_package"))));
            return false;
        }
        r.h("PlatformScheduler", "Requirements not met: " + b10);
        jobFinished(jobParameters, true);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
