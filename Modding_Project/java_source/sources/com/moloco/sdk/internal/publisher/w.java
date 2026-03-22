package com.moloco.sdk.internal.publisher;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.AdFormatType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class w implements m0 {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33042d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33043e = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final AdFormatType f33044a;

    /* renamed from: b  reason: collision with root package name */
    public final long f33045b;

    /* renamed from: c  reason: collision with root package name */
    public long f33046c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public /* synthetic */ w(AdFormatType adFormatType, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormatType, j10);
    }

    public final long a(long j10) {
        long b10 = j10 - b();
        long t10 = kotlin.time.c.t(kotlin.time.b.q(this.f33045b) - b10, DurationUnit.MILLISECONDS);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "AdCreateLoadTimeoutManager", this.f33044a + " timeout: " + ((Object) kotlin.time.b.K(this.f33045b)) + " , create ad duration: " + b10 + " ms (createTime: " + b() + " ms, loadStartTime: " + j10 + " ms). Return value: " + ((Object) kotlin.time.b.K(t10)), false, 4, null);
        return t10;
    }

    public long b() {
        return this.f33046c;
    }

    @Override // com.moloco.sdk.internal.publisher.m0
    public void setCreateAdObjectStartTime(long j10) {
        this.f33046c = j10;
    }

    public w(AdFormatType adFormatType, long j10) {
        Intrinsics.checkNotNullParameter(adFormatType, "adFormatType");
        this.f33044a = adFormatType;
        this.f33045b = j10;
    }
}
