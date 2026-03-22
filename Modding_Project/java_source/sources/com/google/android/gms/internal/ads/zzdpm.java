package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdpm extends FrameLayout {
    private final com.google.android.gms.ads.internal.util.zzau zza;

    public zzdpm(Context context, @NonNull View view, @NonNull com.google.android.gms.ads.internal.util.zzau zzauVar) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        this.zza = zzauVar;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.zza.zzm(motionEvent);
        return false;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof zzcfg) {
                arrayList.add((zzcfg) childAt);
            }
        }
        super.removeAllViews();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((zzcfg) arrayList.get(i11)).destroy();
        }
    }
}
