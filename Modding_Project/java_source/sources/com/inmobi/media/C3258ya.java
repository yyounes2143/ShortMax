package com.inmobi.media;

import android.content.Context;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.ya  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3258ya {

    /* renamed from: b  reason: collision with root package name */
    public static volatile Picasso f25464b;

    /* renamed from: a  reason: collision with root package name */
    public static final C3258ya f25463a = new C3258ya();

    /* renamed from: c  reason: collision with root package name */
    public static final Object f25465c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static final ArrayList f25466d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public static final C3242xa f25467e = new C3242xa();

    public static final /* synthetic */ String d() {
        return "ya";
    }

    public static final WeakReference a(C3258ya c3258ya, Context context) {
        c3258ya.getClass();
        int size = f25466d.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList = f25466d;
            Context context2 = (Context) ((WeakReference) arrayList.get(i10)).get();
            if (context2 != null && Intrinsics.areEqual(context2, context)) {
                return (WeakReference) arrayList.get(i10);
            }
        }
        return null;
    }

    @NotNull
    public final Picasso a(@NotNull Context context) {
        WeakReference weakReference;
        Picasso picasso;
        Intrinsics.checkNotNullParameter(context, "context");
        synchronized (f25465c) {
            try {
                int size = f25466d.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size) {
                        weakReference = null;
                        break;
                    }
                    ArrayList arrayList = f25466d;
                    Context context2 = (Context) ((WeakReference) arrayList.get(i10)).get();
                    if (context2 != null && Intrinsics.areEqual(context2, context)) {
                        weakReference = (WeakReference) arrayList.get(i10);
                        break;
                    }
                    i10++;
                }
                if (weakReference == null) {
                    f25466d.add(new WeakReference(context));
                }
                picasso = f25464b;
                if (picasso == null) {
                    picasso = new Picasso.Builder(context).build();
                    f25464b = picasso;
                    Uc.a(context, f25467e);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Intrinsics.checkNotNullExpressionValue(picasso, "synchronized(...)");
        return picasso;
    }

    @Nullable
    public final Object a(@NotNull InvocationHandler connectionCallbackHandler) {
        Intrinsics.checkNotNullParameter(connectionCallbackHandler, "connectionCallbackHandler");
        try {
            return Proxy.newProxyInstance(Callback.class.getClassLoader(), new Class[]{Callback.class}, connectionCallbackHandler);
        } catch (Exception unused) {
            return null;
        }
    }
}
