package io.bidmachine.ads.networks.gam_dynamic;

import android.os.Build;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes7.dex */
class VersionManager {
    @Nullable
    @VisibleForTesting
    static lr.a b(@NonNull List<Pair<lr.b, im.b>> list) {
        lr.a f10;
        for (Pair<lr.b, im.b> pair : list) {
            im.b bVar = (im.b) pair.second;
            if (Build.VERSION.SDK_INT >= bVar.b() && (f10 = f(bVar)) != null) {
                return f10;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static im.b c(@NonNull String str) {
        List<Pair<lr.b, im.b>> d10;
        lr.a b10;
        lr.b d11 = lr.b.d(str);
        if (d11 == null || (b10 = b((d10 = d()))) == null || !d11.a(b10)) {
            return null;
        }
        for (Pair<lr.b, im.b> pair : d10) {
            if (((lr.b) pair.first).a(b10)) {
                return (im.b) pair.second;
            }
        }
        return null;
    }

    @NonNull
    @VisibleForTesting
    static List<Pair<lr.b, im.b>> d() {
        im.b bVar;
        ArrayList arrayList = new ArrayList();
        ArrayList<im.b> arrayList2 = new ArrayList<im.b>() { // from class: io.bidmachine.ads.networks.gam_dynamic.VersionManager.1
            {
                add(new jm.a());
                add(new km.a());
                add(new lm.a());
            }
        };
        Collections.sort(arrayList2, new Comparator() { // from class: io.bidmachine.ads.networks.gam_dynamic.b0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int e10;
                e10 = VersionManager.e((im.b) obj, (im.b) obj2);
                return e10;
            }
        });
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            im.b bVar2 = arrayList2.get(i10);
            lr.a aVar = null;
            if (i10 < size - 1) {
                bVar = arrayList2.get(i10 + 1);
            } else {
                bVar = null;
            }
            lr.a c10 = bVar2.c();
            if (bVar != null) {
                aVar = bVar.c();
            }
            arrayList.add(new Pair(new lr.b(c10, aVar, true, false), bVar2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(im.b bVar, im.b bVar2) {
        return bVar.c().compareTo(bVar2.c());
    }

    @Nullable
    @VisibleForTesting
    static lr.a f(@NonNull im.b bVar) {
        try {
            return bVar.getVersion();
        } catch (Throwable unused) {
            return null;
        }
    }
}
