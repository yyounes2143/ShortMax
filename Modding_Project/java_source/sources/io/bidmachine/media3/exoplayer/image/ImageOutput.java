package io.bidmachine.media3.exoplayer.image;

import android.graphics.Bitmap;
/* loaded from: classes8.dex */
public interface ImageOutput {

    /* renamed from: a  reason: collision with root package name */
    public static final ImageOutput f56373a = new a();

    void a();

    void onImageAvailable(long j10, Bitmap bitmap);

    /* loaded from: classes8.dex */
    class a implements ImageOutput {
        a() {
        }

        @Override // io.bidmachine.media3.exoplayer.image.ImageOutput
        public void a() {
        }

        @Override // io.bidmachine.media3.exoplayer.image.ImageOutput
        public void onImageAvailable(long j10, Bitmap bitmap) {
        }
    }
}
