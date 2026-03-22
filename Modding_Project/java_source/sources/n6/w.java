package n6;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
/* compiled from: TrackGroupArray.java */
/* loaded from: classes4.dex */
public final class w implements com.google.android.exoplayer2.g {

    /* renamed from: d  reason: collision with root package name */
    public static final w f62838d = new w(new u[0]);

    /* renamed from: e  reason: collision with root package name */
    public static final g.a<w> f62839e = new g.a() { // from class: n6.v
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            w e10;
            e10 = w.e(bundle);
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f62840a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<u> f62841b;

    /* renamed from: c  reason: collision with root package name */
    private int f62842c;

    public w(u... uVarArr) {
        this.f62841b = ImmutableList.v(uVarArr);
        this.f62840a = uVarArr.length;
        f();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ w e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        if (parcelableArrayList == null) {
            return new w(new u[0]);
        }
        return new w((u[]) b7.c.b(u.f62832f, parcelableArrayList).toArray(new u[0]));
    }

    private void f() {
        int i10 = 0;
        while (i10 < this.f62841b.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f62841b.size(); i12++) {
                if (this.f62841b.get(i10).equals(this.f62841b.get(i12))) {
                    b7.q.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public u b(int i10) {
        return this.f62841b.get(i10);
    }

    public int c(u uVar) {
        int indexOf = this.f62841b.indexOf(uVar);
        if (indexOf < 0) {
            return -1;
        }
        return indexOf;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w.class != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        if (this.f62840a == wVar.f62840a && this.f62841b.equals(wVar.f62841b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f62842c == 0) {
            this.f62842c = this.f62841b.hashCode();
        }
        return this.f62842c;
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), b7.c.d(this.f62841b));
        return bundle;
    }
}
