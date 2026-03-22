package coil.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import o0.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q0.d;
/* compiled from: GenericViewTarget.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class GenericViewTarget<T extends View> implements b<T>, d, DefaultLifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4106a;

    @Override // q0.d
    @Nullable
    public abstract Drawable a();

    @Override // o0.a
    public void b(@NotNull Drawable drawable) {
        g(drawable);
    }

    @Override // o0.a
    public void c(@Nullable Drawable drawable) {
        g(drawable);
    }

    @Override // o0.a
    public void d(@Nullable Drawable drawable) {
        g(drawable);
    }

    public abstract void e(@Nullable Drawable drawable);

    protected final void f() {
        Animatable animatable;
        Drawable a10 = a();
        if (a10 instanceof Animatable) {
            animatable = (Animatable) a10;
        } else {
            animatable = null;
        }
        if (animatable == null) {
            return;
        }
        if (this.f4106a) {
            animatable.start();
        } else {
            animatable.stop();
        }
    }

    protected final void g(@Nullable Drawable drawable) {
        Animatable animatable;
        Drawable a10 = a();
        if (a10 instanceof Animatable) {
            animatable = (Animatable) a10;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.stop();
        }
        e(drawable);
        f();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(@NotNull LifecycleOwner lifecycleOwner) {
        this.f4106a = true;
        f();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner lifecycleOwner) {
        this.f4106a = false;
        f();
    }
}
