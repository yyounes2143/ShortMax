package r3;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: MemoryCacheParams.kt */
@Metadata
/* loaded from: classes3.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public final int f65552a;

    /* renamed from: b  reason: collision with root package name */
    public final int f65553b;

    /* renamed from: c  reason: collision with root package name */
    public final int f65554c;

    /* renamed from: d  reason: collision with root package name */
    public final int f65555d;

    /* renamed from: e  reason: collision with root package name */
    public final int f65556e;

    /* renamed from: f  reason: collision with root package name */
    public final long f65557f;

    public x(int i10, int i11, int i12, int i13, int i14, long j10) {
        this.f65552a = i10;
        this.f65553b = i11;
        this.f65554c = i12;
        this.f65555d = i13;
        this.f65556e = i14;
        this.f65557f = j10;
    }

    public /* synthetic */ x(int i10, int i11, int i12, int i13, int i14, long j10, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, i13, i14, (i15 & 32) != 0 ? TimeUnit.MINUTES.toMillis(5L) : j10);
    }
}
