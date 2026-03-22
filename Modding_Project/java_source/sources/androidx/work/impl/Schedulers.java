package androidx.work.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.PackageManagerHelper;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class Schedulers {
    public static final String GCM_SCHEDULER = "androidx.work.impl.background.gcm.GcmScheduler";
    private static final String TAG = Logger.tagWithPrefix("Schedulers");

    private Schedulers() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Scheduler createBestAvailableBackgroundScheduler(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl) {
        SystemJobScheduler systemJobScheduler = new SystemJobScheduler(context, workManagerImpl);
        PackageManagerHelper.setComponentEnabled(context, SystemJobService.class, true);
        Logger.get().debug(TAG, "Created SystemJobScheduler and enabled SystemJobService");
        return systemJobScheduler;
    }

    public static void schedule(@NonNull Configuration configuration, @NonNull WorkDatabase workDatabase, @Nullable List<Scheduler> list) {
        if (list != null && list.size() != 0) {
            WorkSpecDao workSpecDao = workDatabase.workSpecDao();
            workDatabase.beginTransaction();
            try {
                List<WorkSpec> eligibleWorkForScheduling = workSpecDao.getEligibleWorkForScheduling(configuration.getMaxSchedulerLimit());
                List<WorkSpec> allEligibleWorkSpecsForScheduling = workSpecDao.getAllEligibleWorkSpecsForScheduling(200);
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    for (WorkSpec workSpec : eligibleWorkForScheduling) {
                        workSpecDao.markWorkSpecScheduled(workSpec.f1724id, currentTimeMillis);
                    }
                }
                workDatabase.setTransactionSuccessful();
                workDatabase.endTransaction();
                if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                    WorkSpec[] workSpecArr = (WorkSpec[]) eligibleWorkForScheduling.toArray(new WorkSpec[eligibleWorkForScheduling.size()]);
                    for (Scheduler scheduler : list) {
                        if (scheduler.hasLimitedSchedulingSlots()) {
                            scheduler.schedule(workSpecArr);
                        }
                    }
                }
                if (allEligibleWorkSpecsForScheduling != null && allEligibleWorkSpecsForScheduling.size() > 0) {
                    WorkSpec[] workSpecArr2 = (WorkSpec[]) allEligibleWorkSpecsForScheduling.toArray(new WorkSpec[allEligibleWorkSpecsForScheduling.size()]);
                    for (Scheduler scheduler2 : list) {
                        if (!scheduler2.hasLimitedSchedulingSlots()) {
                            scheduler2.schedule(workSpecArr2);
                        }
                    }
                }
            } catch (Throwable th2) {
                workDatabase.endTransaction();
                throw th2;
            }
        }
    }

    @Nullable
    private static Scheduler tryCreateGcmBasedScheduler(@NonNull Context context) {
        try {
            Scheduler scheduler = (Scheduler) Class.forName(GCM_SCHEDULER).getConstructor(Context.class).newInstance(context);
            Logger.get().debug(TAG, "Created androidx.work.impl.background.gcm.GcmScheduler");
            return scheduler;
        } catch (Throwable th2) {
            Logger.get().debug(TAG, "Unable to create GCM Scheduler", th2);
            return null;
        }
    }
}
