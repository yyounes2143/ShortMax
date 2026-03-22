package n6;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: TrackGroup.java */
/* loaded from: classes4.dex */
public final class u implements com.google.android.exoplayer2.g {

    /* renamed from: f  reason: collision with root package name */
    public static final g.a<u> f62832f = new g.a() { // from class: n6.t
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            u f10;
            f10 = u.f(bundle);
            return f10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f62833a;

    /* renamed from: b  reason: collision with root package name */
    public final String f62834b;

    /* renamed from: c  reason: collision with root package name */
    public final int f62835c;

    /* renamed from: d  reason: collision with root package name */
    private final v0[] f62836d;

    /* renamed from: e  reason: collision with root package name */
    private int f62837e;

    public u(v0... v0VarArr) {
        this("", v0VarArr);
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ u f(Bundle bundle) {
        ImmutableList b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        if (parcelableArrayList == null) {
            b10 = ImmutableList.A();
        } else {
            b10 = b7.c.b(v0.H, parcelableArrayList);
        }
        return new u(bundle.getString(e(1), ""), (v0[]) b10.toArray(new v0[0]));
    }

    private static void g(String str, @Nullable String str2, @Nullable String str3, int i10) {
        b7.q.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    private static String h(@Nullable String str) {
        if (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) {
            return "";
        }
        return str;
    }

    private static int i(int i10) {
        return i10 | 16384;
    }

    private void j() {
        String h10 = h(this.f62836d[0].f19148c);
        int i10 = i(this.f62836d[0].f19150e);
        int i11 = 1;
        while (true) {
            v0[] v0VarArr = this.f62836d;
            if (i11 < v0VarArr.length) {
                if (!h10.equals(h(v0VarArr[i11].f19148c))) {
                    v0[] v0VarArr2 = this.f62836d;
                    g("languages", v0VarArr2[0].f19148c, v0VarArr2[i11].f19148c, i11);
                    return;
                } else if (i10 != i(this.f62836d[i11].f19150e)) {
                    g("role flags", Integer.toBinaryString(this.f62836d[0].f19150e), Integer.toBinaryString(this.f62836d[i11].f19150e), i11);
                    return;
                } else {
                    i11++;
                }
            } else {
                return;
            }
        }
    }

    @CheckResult
    public u b(String str) {
        return new u(str, this.f62836d);
    }

    public v0 c(int i10) {
        return this.f62836d[i10];
    }

    public int d(v0 v0Var) {
        int i10 = 0;
        while (true) {
            v0[] v0VarArr = this.f62836d;
            if (i10 < v0VarArr.length) {
                if (v0Var == v0VarArr[i10]) {
                    return i10;
                }
                i10++;
            } else {
                return -1;
            }
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        if (this.f62834b.equals(uVar.f62834b) && Arrays.equals(this.f62836d, uVar.f62836d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f62837e == 0) {
            this.f62837e = ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f62834b.hashCode()) * 31) + Arrays.hashCode(this.f62836d);
        }
        return this.f62837e;
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f62836d.length);
        for (v0 v0Var : this.f62836d) {
            arrayList.add(v0Var.j(true));
        }
        bundle.putParcelableArrayList(e(0), arrayList);
        bundle.putString(e(1), this.f62834b);
        return bundle;
    }

    public u(String str, v0... v0VarArr) {
        b7.a.a(v0VarArr.length > 0);
        this.f62834b = str;
        this.f62836d = v0VarArr;
        this.f62833a = v0VarArr.length;
        int i10 = b7.u.i(v0VarArr[0].f19157l);
        this.f62835c = i10 == -1 ? b7.u.i(v0VarArr[0].f19156k) : i10;
        j();
    }
}
