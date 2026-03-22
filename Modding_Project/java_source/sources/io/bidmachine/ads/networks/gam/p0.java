package io.bidmachine.ads.networks.gam;

import android.os.Build;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: VersionManager.java */
/* loaded from: classes7.dex */
public class p0 {
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final List<Pair<lr.b, dm.b>> f53702a = new ArrayList();

    static {
        dm.b bVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new em.a());
        arrayList.add(new fm.a());
        arrayList.add(new gm.a());
        Collections.sort(arrayList, new Comparator() { // from class: io.bidmachine.ads.networks.gam.o0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int d10;
                d10 = p0.d((dm.b) obj, (dm.b) obj2);
                return d10;
            }
        });
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            dm.b bVar2 = (dm.b) arrayList.get(i10);
            lr.a aVar = null;
            if (i10 < size - 1) {
                bVar = (dm.b) arrayList.get(i10 + 1);
            } else {
                bVar = null;
            }
            lr.a c10 = bVar2.c();
            if (bVar != null) {
                aVar = bVar.c();
            }
            f53702a.add(new Pair<>(new lr.b(c10, aVar, true, false), bVar2));
        }
    }

    @Nullable
    @VisibleForTesting
    static lr.a b() {
        lr.a e10;
        for (Pair<lr.b, dm.b> pair : f53702a) {
            dm.b bVar = (dm.b) pair.second;
            if (Build.VERSION.SDK_INT >= bVar.b() && (e10 = e(bVar)) != null) {
                return e10;
            }
        }
        return null;
    }

    @Nullable
    public static dm.b c(@NonNull String str) {
        lr.a b10;
        lr.b d10 = lr.b.d(str);
        if (d10 == null || (b10 = b()) == null || !d10.a(b10)) {
            return null;
        }
        for (Pair<lr.b, dm.b> pair : f53702a) {
            if (((lr.b) pair.first).a(b10)) {
                return (dm.b) pair.second;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int d(dm.b bVar, dm.b bVar2) {
        return bVar.c().compareTo(bVar2.c());
    }

    @Nullable
    @VisibleForTesting
    static lr.a e(@NonNull dm.b bVar) {
        try {
            return bVar.getVersion();
        } catch (Throwable unused) {
            return null;
        }
    }
}
