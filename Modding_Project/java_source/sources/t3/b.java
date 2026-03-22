package t3;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultExecutorSupplier.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b implements o {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f66825f = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Executor f66826a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Executor f66827b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Executor f66828c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Executor f66829d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ScheduledExecutorService f66830e;

    /* compiled from: DefaultExecutorSupplier.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(int i10) {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(2, new y(10, "FrescoIoBoundExecutor", true));
        Intrinsics.checkNotNullExpressionValue(newFixedThreadPool, "newFixedThreadPool(...)");
        this.f66826a = newFixedThreadPool;
        ExecutorService newFixedThreadPool2 = Executors.newFixedThreadPool(i10, new y(10, "FrescoDecodeExecutor", true));
        Intrinsics.checkNotNullExpressionValue(newFixedThreadPool2, "newFixedThreadPool(...)");
        this.f66827b = newFixedThreadPool2;
        ExecutorService newFixedThreadPool3 = Executors.newFixedThreadPool(i10, new y(10, "FrescoBackgroundExecutor", true));
        Intrinsics.checkNotNullExpressionValue(newFixedThreadPool3, "newFixedThreadPool(...)");
        this.f66828c = newFixedThreadPool3;
        ExecutorService newFixedThreadPool4 = Executors.newFixedThreadPool(1, new y(10, "FrescoLightWeightBackgroundExecutor", true));
        Intrinsics.checkNotNullExpressionValue(newFixedThreadPool4, "newFixedThreadPool(...)");
        this.f66829d = newFixedThreadPool4;
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(i10, new y(10, "FrescoBackgroundExecutor", true));
        Intrinsics.checkNotNullExpressionValue(newScheduledThreadPool, "newScheduledThreadPool(...)");
        this.f66830e = newScheduledThreadPool;
    }

    @Override // t3.o
    @NotNull
    public Executor a() {
        return this.f66829d;
    }

    @Override // t3.o
    @NotNull
    public Executor b() {
        return this.f66828c;
    }

    @Override // t3.o
    @NotNull
    public Executor c() {
        return this.f66826a;
    }

    @Override // t3.o
    @NotNull
    public Executor d() {
        return this.f66826a;
    }

    @Override // t3.o
    @NotNull
    public Executor e() {
        return this.f66826a;
    }

    @Override // t3.o
    @Nullable
    public ScheduledExecutorService f() {
        return this.f66830e;
    }

    @Override // t3.o
    @NotNull
    public Executor g() {
        return this.f66827b;
    }
}
