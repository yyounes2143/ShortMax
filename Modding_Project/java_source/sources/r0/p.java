package r0;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n0.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HardwareBitmaps.kt */
@Metadata
/* loaded from: classes2.dex */
final class p extends m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f65465a = new a(null);

    /* compiled from: HardwareBitmaps.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public p(@Nullable q qVar) {
        super(null);
    }

    @Override // r0.m
    public boolean a(@NotNull n0.g gVar) {
        int i10;
        n0.c b10 = gVar.b();
        int i11 = Integer.MAX_VALUE;
        if (b10 instanceof c.a) {
            i10 = ((c.a) b10).f62716a;
        } else {
            i10 = Integer.MAX_VALUE;
        }
        if (i10 > 100) {
            n0.c a10 = gVar.a();
            if (a10 instanceof c.a) {
                i11 = ((c.a) a10).f62716a;
            }
            if (i11 > 100) {
                return true;
            }
        }
        return false;
    }

    @Override // r0.m
    public boolean b() {
        return l.f65454a.b(null);
    }
}
