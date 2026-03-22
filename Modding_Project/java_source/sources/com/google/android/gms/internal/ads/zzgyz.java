package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgyz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgyr zzb(Class cls) {
        String format;
        ClassLoader classLoader = zzgyz.class.getClassLoader();
        if (cls.equals(zzgyr.class)) {
            format = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else if (cls.getPackage().equals(zzgyz.class.getPackage())) {
            format = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    return (zzgyr) cls.cast(((zzgyz) Class.forName(format, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).zza());
                } catch (IllegalAccessException e10) {
                    throw new IllegalStateException(e10);
                } catch (InvocationTargetException e11) {
                    throw new IllegalStateException(e11);
                }
            } catch (InstantiationException e12) {
                throw new IllegalStateException(e12);
            } catch (NoSuchMethodException e13) {
                throw new IllegalStateException(e13);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zzgyz.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add((zzgyr) cls.cast(((zzgyz) it.next()).zza()));
                } catch (ServiceConfigurationError e14) {
                    Logger.getLogger(zzgym.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(cls.getSimpleName()), (Throwable) e14);
                }
            }
            if (arrayList.size() == 1) {
                return (zzgyr) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzgyr) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e15) {
                throw new IllegalStateException(e15);
            } catch (NoSuchMethodException e16) {
                throw new IllegalStateException(e16);
            } catch (InvocationTargetException e17) {
                throw new IllegalStateException(e17);
            }
        }
    }

    protected abstract zzgyr zza();
}
