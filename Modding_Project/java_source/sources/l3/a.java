package l3;

import android.graphics.Canvas;
import android.graphics.Rect;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
/* compiled from: AnimatedDrawableBackend.java */
/* loaded from: classes3.dex */
public interface a {
    AnimatedDrawableFrameInfo a(int i10);

    int b(int i10);

    int c();

    d d();

    int e();

    void f(int i10, Canvas canvas);

    a g(Rect rect);

    int getFrameCount();

    int getHeight();

    int getLoopCount();

    int getWidth();

    int h();

    void i(int i10, Canvas canvas);
}
