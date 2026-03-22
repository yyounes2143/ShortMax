package com.startshorts.androidplayer.manager.shorts.core;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.shorts.core.ShortsJobsManager;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import gt.q0;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsJobsManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsJobsManager {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f42953c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i<ConcurrentHashMap<JobType, r>> f42954a = c.b(new Function0() { // from class: wf.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap f10;
            f10 = ShortsJobsManager.f();
            return f10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private boolean f42955b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ShortsJobsManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class JobType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ JobType[] $VALUES;
        public static final JobType NEXT_SHORTS_TIP = new JobType("NEXT_SHORTS_TIP", 0);

        private static final /* synthetic */ JobType[] $values() {
            return new JobType[]{NEXT_SHORTS_TIP};
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

    /* compiled from: ShortsJobsManager.kt */
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
    public static /* synthetic */ void e(ShortsJobsManager shortsJobsManager, JobType jobType, long j10, CoroutineContext coroutineContext, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            coroutineContext = q0.c();
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        Function0<Unit> function02 = function0;
        if ((i10 & 8) != 0) {
            function02 = null;
        }
        shortsJobsManager.d(jobType, j10, coroutineContext2, function02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap f() {
        return new ConcurrentHashMap();
    }

    public final void b(@NotNull JobType jobType) {
        r remove;
        Intrinsics.checkNotNullParameter(jobType, "jobType");
        try {
            if (this.f42954a.isInitialized() && (remove = this.f42954a.getValue().remove(jobType)) != null) {
                r.a.b(remove, null, 1, null);
                Unit unit = Unit.f60915a;
                Logger logger = Logger.f41511a;
                logger.h("ShortsJobsManager", "cancelJob -> jobType(" + jobType + ')');
            }
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("ShortsJobsManager", "cancelJob failed -> " + e10.getMessage());
        }
    }

    public final void c() {
        try {
            if (this.f42954a.isInitialized()) {
                for (r rVar : this.f42954a.getValue().values()) {
                    Intrinsics.checkNotNullExpressionValue(rVar, "next(...)");
                    r.a.b(rVar, null, 1, null);
                }
                this.f42954a.getValue().clear();
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ShortsJobsManager", "cancelJobs failed -> " + e10.getMessage());
        }
    }

    public final void d(@NotNull JobType jobType, long j10, @NotNull CoroutineContext completeContext, @Nullable Function0<Unit> function0) {
        r f10;
        Intrinsics.checkNotNullParameter(jobType, "jobType");
        Intrinsics.checkNotNullParameter(completeContext, "completeContext");
        b(jobType);
        if (!this.f42955b && (f10 = CoroutineUtil.f48072a.f(j10, completeContext, function0)) != null) {
            this.f42954a.getValue().put(jobType, f10);
            Logger logger = Logger.f41511a;
            logger.h("ShortsJobsManager", "delay -> jobType(" + jobType + ") millis(" + j10 + "ms)");
        }
    }

    public final void g() {
        if (this.f42955b) {
            return;
        }
        this.f42955b = true;
        c();
    }
}
