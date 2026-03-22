package ht;

import android.os.Build;
import gt.d0;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidExceptionPreHandler.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b extends kotlin.coroutines.a implements d0 {
    @Nullable
    private volatile Object _preHandler;

    public b() {
        super(d0.D8);
        this._preHandler = this;
    }

    private final Method m() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            if (Modifier.isPublic(declaredMethod.getModifiers())) {
                if (Modifier.isStatic(declaredMethod.getModifiers())) {
                    method = declaredMethod;
                }
            }
        } catch (Throwable unused) {
        }
        this._preHandler = method;
        return method;
    }

    @Override // gt.d0
    public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        Object obj;
        int i10 = Build.VERSION.SDK_INT;
        if (26 <= i10 && i10 < 28) {
            Method m10 = m();
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = null;
            if (m10 != null) {
                obj = m10.invoke(null, new Object[0]);
            } else {
                obj = null;
            }
            if (obj instanceof Thread.UncaughtExceptionHandler) {
                uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) obj;
            }
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th2);
            }
        }
    }
}
