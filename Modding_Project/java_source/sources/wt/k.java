package wt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayPools.kt */
@Metadata
@SourceDebugExtension({"SMAP\nArrayPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayPools.kt\nkotlinx/serialization/json/internal/CharArrayPoolBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"})
/* loaded from: classes8.dex */
public class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kotlin.collections.m<char[]> f70312a = new kotlin.collections.m<>();

    /* renamed from: b  reason: collision with root package name */
    private int f70313b;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(@NotNull char[] array) {
        int i10;
        Intrinsics.checkNotNullParameter(array, "array");
        synchronized (this) {
            try {
                int length = this.f70313b + array.length;
                i10 = i.f70304a;
                if (length < i10) {
                    this.f70313b += array.length;
                    this.f70312a.addLast(array);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final char[] b(int i10) {
        char[] u10;
        synchronized (this) {
            u10 = this.f70312a.u();
            if (u10 != null) {
                this.f70313b -= u10.length;
            } else {
                u10 = null;
            }
        }
        if (u10 == null) {
            return new char[i10];
        }
        return u10;
    }
}
