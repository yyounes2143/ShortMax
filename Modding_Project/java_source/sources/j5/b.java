package j5;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;
/* compiled from: JobInfoScheduler.java */
@RequiresApi(api = 21)
/* loaded from: classes4.dex */
public class b implements u {

    /* renamed from: a  reason: collision with root package name */
    private final Context f60155a;

    /* renamed from: b  reason: collision with root package name */
    private final k5.d f60156b;

    /* renamed from: c  reason: collision with root package name */
    private final SchedulerConfig f60157c;

    public b(Context context, k5.d dVar, SchedulerConfig schedulerConfig) {
        this.f60155a = context;
        this.f60156b = dVar;
        this.f60157c = schedulerConfig;
    }

    private boolean d(JobScheduler jobScheduler, int i10, int i11) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i12 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i10) {
                if (i12 < i11) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    @Override // j5.u
    public void a(c5.p pVar, int i10) {
        b(pVar, i10, false);
    }

    @Override // j5.u
    public void b(c5.p pVar, int i10, boolean z10) {
        ComponentName componentName = new ComponentName(this.f60155a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f60155a.getSystemService("jobscheduler");
        int c10 = c(pVar);
        if (!z10 && d(jobScheduler, c10, i10)) {
            g5.a.b("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", pVar);
            return;
        }
        long j10 = this.f60156b.j(pVar);
        JobInfo.Builder c11 = this.f60157c.c(new JobInfo.Builder(c10, componentName), pVar.d(), j10, i10);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i10);
        persistableBundle.putString("backendName", pVar.b());
        persistableBundle.putInt(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, n5.a.a(pVar.d()));
        if (pVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(pVar.c(), 0));
        }
        c11.setExtras(persistableBundle);
        g5.a.c("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", pVar, Integer.valueOf(c10), Long.valueOf(this.f60157c.g(pVar.d(), j10, i10)), Long.valueOf(j10), Integer.valueOf(i10));
        jobScheduler.schedule(c11.build());
    }

    @VisibleForTesting
    int c(c5.p pVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f60155a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(pVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(n5.a.a(pVar.d())).array());
        if (pVar.c() != null) {
            adler32.update(pVar.c());
        }
        return (int) adler32.getValue();
    }
}
