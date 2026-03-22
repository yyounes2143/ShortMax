package c7;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: ColorInfo.java */
/* loaded from: classes4.dex */
public final class c implements com.google.android.exoplayer2.g {

    /* renamed from: f  reason: collision with root package name */
    public static final c f3221f = new c(1, 2, 3, null);

    /* renamed from: g  reason: collision with root package name */
    public static final g.a<c> f3222g = new g.a() { // from class: c7.b
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            c e10;
            e10 = c.e(bundle);
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f3223a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3224b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3225c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f3226d;

    /* renamed from: e  reason: collision with root package name */
    private int f3227e;

    public c(int i10, int i11, int i12, @Nullable byte[] bArr) {
        this.f3223a = i10;
        this.f3224b = i11;
        this.f3225c = i12;
        this.f3226d = bArr;
    }

    public static int b(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 9) {
            return 6;
        }
        if (i10 != 4 && i10 != 5 && i10 != 6 && i10 != 7) {
            return -1;
        }
        return 2;
    }

    public static int c(int i10) {
        if (i10 != 1) {
            if (i10 == 16) {
                return 6;
            }
            if (i10 == 18) {
                return 7;
            }
            if (i10 != 6 && i10 != 7) {
                return -1;
            }
            return 3;
        }
        return 3;
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c e(Bundle bundle) {
        return new c(bundle.getInt(d(0), -1), bundle.getInt(d(1), -1), bundle.getInt(d(2), -1), bundle.getByteArray(d(3)));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f3223a == cVar.f3223a && this.f3224b == cVar.f3224b && this.f3225c == cVar.f3225c && Arrays.equals(this.f3226d, cVar.f3226d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f3227e == 0) {
            this.f3227e = ((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f3223a) * 31) + this.f3224b) * 31) + this.f3225c) * 31) + Arrays.hashCode(this.f3226d);
        }
        return this.f3227e;
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.f3223a);
        bundle.putInt(d(1), this.f3224b);
        bundle.putInt(d(2), this.f3225c);
        bundle.putByteArray(d(3), this.f3226d);
        return bundle;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(this.f3223a);
        sb2.append(", ");
        sb2.append(this.f3224b);
        sb2.append(", ");
        sb2.append(this.f3225c);
        sb2.append(", ");
        if (this.f3226d != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        sb2.append(z10);
        sb2.append(")");
        return sb2.toString();
    }
}
