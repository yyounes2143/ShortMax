package w7;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: ComponentDiscovery.java */
/* loaded from: classes5.dex */
public final class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f69752a;

    /* renamed from: b  reason: collision with root package name */
    private final c<T> f69753b;

    /* compiled from: ComponentDiscovery.java */
    /* loaded from: classes5.dex */
    private static class b implements c<Context> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<? extends Service> f69754a;

        private Bundle b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f69754a), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", this.f69754a + " has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        @Override // w7.f.c
        /* renamed from: c */
        public List<String> a(Context context) {
            Bundle b10 = b(context);
            if (b10 == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : b10.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(b10.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }

        private b(Class<? extends Service> cls) {
            this.f69754a = cls;
        }
    }

    /* compiled from: ComponentDiscovery.java */
    @VisibleForTesting
    /* loaded from: classes5.dex */
    interface c<T> {
        List<String> a(T t10);
    }

    @VisibleForTesting
    f(T t10, c<T> cVar) {
        this.f69752a = t10;
        this.f69753b = cVar;
    }

    public static f<Context> c(Context context, Class<? extends Service> cls) {
        return new f<>(context, new b(cls));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static ComponentRegistrar d(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                return (ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new InvalidRegistrarException(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException unused) {
            Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e10) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e10);
        } catch (InstantiationException e11) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e11);
        } catch (NoSuchMethodException e12) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e12);
        } catch (InvocationTargetException e13) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e13);
        }
    }

    public List<w8.b<ComponentRegistrar>> b() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.f69753b.a(this.f69752a)) {
            arrayList.add(new w8.b() { // from class: w7.e
                @Override // w8.b
                public final Object get() {
                    ComponentRegistrar d10;
                    d10 = f.d(str);
                    return d10;
                }
            });
        }
        return arrayList;
    }
}
