package com.mbridge.msdk.video.module.listener.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
/* compiled from: RoundedImageLoaderListener.java */
/* loaded from: classes6.dex */
public class j extends e {

    /* renamed from: d  reason: collision with root package name */
    private int f31160d;

    public j(ImageView imageView, int i10) {
        super(imageView);
        this.f31160d = i10;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.e, com.mbridge.msdk.foundation.same.image.c
    public void onSuccessLoad(Bitmap bitmap, String str) {
        Bitmap a10;
        if (bitmap == null) {
            return;
        }
        try {
            if (this.f31153a != null && !bitmap.isRecycled() && (a10 = o0.a(bitmap, 1, this.f31160d)) != null) {
                this.f31153a.setImageBitmap(a10);
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }
}
