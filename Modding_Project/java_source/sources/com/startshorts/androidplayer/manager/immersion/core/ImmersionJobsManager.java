package com.startshorts.androidplayer.manager.immersion.core;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import gt.q0;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionJobsManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionJobsManager {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f42566c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i<ConcurrentHashMap<JobType, r>> f42567a = c.b(new Function0() { // from class: gf.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap h10;
            h10 = ImmersionJobsManager.h();
            return h10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private boolean f42568b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ImmersionJobsManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class JobType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ JobType[] $VALUES;
        public static final JobType SHOW_EPISODE_LIST_DIALOG = new JobType("SHOW_EPISODE_LIST_DIALOG", 0);
        public static final JobType CHECK_ENABLE_PLAY_BY_DIALOG_COUNT = new JobType("CHECK_ENABLE_PLAY_BY_DIALOG_COUNT", 1);
        public static final JobType CATON_TOASTER = new JobType("CATON_TOASTER", 2);
        public static final JobType SWITCH_TIMEOUT = new JobType("SWITCH_TIMEOUT", 3);
        public static final JobType HIDE_COLLECT_SHORTS_TIP = new JobType("HIDE_COLLECT_SHORTS_TIP", 4);
        public static final JobType NEXT_SHORTS_TIP = new JobType("NEXT_SHORTS_TIP", 5);
        public static final JobType CHECK_UNLOCK_EPISODE_DIALOG_HIDE = new JobType("CHECK_UNLOCK_EPISODE_DIALOG_HIDE", 6);
        public static final JobType CHECK_AD_CONTINUE_DIALOG_HIDE = new JobType("CHECK_AD_CONTINUE_DIALOG_HIDE", 7);
        public static final JobType DOWNGRADE_RESOLUTION_WHEN_CATON = new JobType("DOWNGRADE_RESOLUTION_WHEN_CATON", 8);
        public static final JobType SUBS_PRO_RENEW = new JobType("SUBS_PRO_RENEW", 9);

        private static final /* synthetic */ JobType[] $values() {
            return new JobType[]{SHOW_EPISODE_LIST_DIALOG, CHECK_ENABLE_PLAY_BY_DIALOG_COUNT, CATON_TOASTER, SWITCH_TIMEOUT, HIDE_COLLECT_SHORTS_TIP, NEXT_SHORTS_TIP, CHECK_UNLOCK_EPISODE_DIALOG_HIDE, CHECK_AD_CONTINUE_DIALOG_HIDE, DOWNGRADE_RESOLUTION_WHEN_CATON, SUBS_PRO_RENEW};
        }

        static {
            JobType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private JobType(String str, int i10) {
        }

        @NotNull
        public static ss.a<JobType> getEntries() {
            return $ENTRIES;
        }

        public static JobType valueOf(String str) {
            return (JobType) Enum.valueOf(JobType.class, str);
        }

        public static JobType[] values() {
            return (JobType[]) $VALUES.clone();
        }
    }

    /* compiled from: ImmersionJobsManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void e(ImmersionJobsManager immersionJobsManager, JobType jobType, long j10, CoroutineContext coroutineContext, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            coroutineContext = q0.c();
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        Function0<Unit> function02 = function0;
        if ((i10 & 8) != 0) {
            function02 = null;
        }
        immersionJobsManager.d(jobType, j10, coroutineContext2, function02);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void g(ImmersionJobsManager immersionJobsManager, JobType jobType, long j10, CoroutineContext coroutineContext, Function1 function1, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            coroutineContext = q0.c();
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        Function1<? super Integer, Unit> function12 = function1;
        if ((i10 & 8) != 0) {
            function12 = null;
        }
        immersionJobsManager.f(jobType, j10, coroutineContext2, function12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap h() {
        return new ConcurrentHashMap();
    }

    public final void b(@NotNull JobType jobType) {
        r remove;
        Intrinsics.checkNotNullParameter(jobType, "jobType");
        try {
            if (this.f42567a.isInitialized() && (remove = this.f42567a.getValue().remove(jobType)) != null) {
                r.a.b(remove, null, 1, null);
                Unit unit = Unit.f60915a;
                Logger logger = Logger.f41511a;
                logger.h("ImmersionJobsManager", "cancelJob -> jobType(" + jobType + ')');
            }
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("ImmersionJobsManager", "cancelJob failed -> " + e10.getMessage());
        }
    }

    public final void c() {
        try {
            if (this.f42567a.isInitialized()) {
                for (r rVar : this.f42567a.getValue().values()) {
                    Intrinsics.checkNotNullExpressionValue(rVar, "next(...)");
                    r.a.b(rVar, null, 1, null);
                }
                this.f42567a.getValue().clear();
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ImmersionJobsManager", "cancelJobs failed -> " + e10.getMessage());
        }
    }

    public final void d(@NotNull JobType jobType, long j10, @NotNull CoroutineContext completeContext, @Nullable Function0<Unit> function0) {
        r f10;
        Intrinsics.checkNotNullParameter(jobType, "jobType");
        Intrinsics.checkNotNullParameter(completeContext, "completeContext");
        b(jobType);
        if (!this.f42568b && (f10 = CoroutineUtil.f48072a.f(j10, completeContext, function0)) != null) {
            this.f42567a.getValue().put(jobType, f10);
            Logger logger = Logger.f41511a;
            logger.h("ImmersionJobsManager", "delay -> jobType(" + jobType + ") millis(" + j10 + "ms)");
        }
    }

    public final void f(@NotNull JobType jobType, long j10, @NotNull CoroutineContext onTickContext, @Nullable Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(jobType, "jobType");
        Intrinsics.checkNotNullParameter(onTickContext, "onTickContext");
        b(jobType);
        if (this.f42568b) {
            return;
        }
        this.f42567a.getValue().put(jobType, CoroutineUtil.n(CoroutineUtil.f48072a, j10, onTickContext, function1, null, 8, null));
        Logger logger = Logger.f41511a;
        logger.h("ImmersionJobsManager", "fixed -> jobType(" + jobType + ") millis(" + j10 + "ms)");
    }

    public final void i() {
        if (this.f42568b) {
            return;
        }
        this.f42568b = true;
        c();
    }
}
