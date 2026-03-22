package io.bidmachine.iab.vast.processor;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.tags.LinearCreativeTag;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import sm.q;
import tm.d;
/* loaded from: classes7.dex */
public class DefaultMediaPicker extends VastMediaPicker<MediaFileTag> {

    /* renamed from: a  reason: collision with root package name */
    private int f54847a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f54848b;

    /* loaded from: classes7.dex */
    private class b implements Comparator<Pair<LinearCreativeTag, MediaFileTag>> {
        private b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Pair<LinearCreativeTag, MediaFileTag> pair, Pair<LinearCreativeTag, MediaFileTag> pair2) {
            int k02 = ((MediaFileTag) pair.second).k0() * ((MediaFileTag) pair.second).Z();
            int k03 = ((MediaFileTag) pair2.second).k0() * ((MediaFileTag) pair2.second).Z();
            int abs = Math.abs(k02 - DefaultMediaPicker.this.f54847a);
            int abs2 = Math.abs(k03 - DefaultMediaPicker.this.f54847a);
            d.a("DefaultMediaPicker", "AreaComparator: obj1 - %d, obj2 - %d", Integer.valueOf(abs), Integer.valueOf(abs2));
            if (abs < abs2) {
                return -1;
            }
            if (abs > abs2) {
                return 1;
            }
            return 0;
        }
    }

    public DefaultMediaPicker(@NonNull Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        f(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.f54848b = q.w(context);
    }

    @Nullable
    private Pair<LinearCreativeTag, MediaFileTag> e(@NonNull List<Pair<LinearCreativeTag, MediaFileTag>> list) {
        d.a("DefaultMediaPicker", "getBestMatch", new Object[0]);
        Pair<LinearCreativeTag, MediaFileTag> pair = null;
        for (Pair<LinearCreativeTag, MediaFileTag> pair2 : list) {
            if (g((MediaFileTag) pair2.second)) {
                if (h((MediaFileTag) pair2.second)) {
                    return pair2;
                }
                if (pair == null) {
                    pair = pair2;
                }
            }
        }
        return pair;
    }

    private void f(int i10, int i11) {
        this.f54847a = i10 * i11;
    }

    @Override // io.bidmachine.iab.vast.processor.VastMediaPicker
    @Nullable
    public Pair<LinearCreativeTag, MediaFileTag> b(@Nullable List<Pair<LinearCreativeTag, MediaFileTag>> list) {
        if (list == null) {
            return null;
        }
        Collections.sort(list, new b());
        return e(list);
    }

    protected boolean g(@NonNull MediaFileTag mediaFileTag) {
        String a02 = mediaFileTag.a0();
        if (a02 != null && a02.matches("video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)")) {
            return true;
        }
        return false;
    }

    protected boolean h(@NonNull MediaFileTag mediaFileTag) {
        boolean z10;
        if (mediaFileTag.k0() > mediaFileTag.Z()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 != this.f54848b) {
            return false;
        }
        return true;
    }
}
