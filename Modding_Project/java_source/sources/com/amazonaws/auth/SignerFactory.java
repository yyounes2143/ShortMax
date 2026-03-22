package com.amazonaws.auth;

import com.amazonaws.internal.config.InternalConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class SignerFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Class<? extends Signer>> f4960a;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f4960a = concurrentHashMap;
        concurrentHashMap.put("QueryStringSignerType", QueryStringSigner.class);
        concurrentHashMap.put("AWS4SignerType", AWS4Signer.class);
        concurrentHashMap.put("NoOpSignerType", NoOpSigner.class);
    }

    private static Signer a(String str, String str2) {
        Class<? extends Signer> cls = f4960a.get(str);
        if (cls != null) {
            try {
                Signer newInstance = cls.newInstance();
                if (newInstance instanceof ServiceAwareSigner) {
                    ((ServiceAwareSigner) newInstance).setServiceName(str2);
                }
                return newInstance;
            } catch (IllegalAccessException e10) {
                throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e10);
            } catch (InstantiationException e11) {
                throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e11);
            }
        }
        throw new IllegalArgumentException();
    }

    public static Signer b(String str, String str2) {
        return d(str, str2);
    }

    public static Signer c(String str, String str2) {
        return a(str, str2);
    }

    private static Signer d(String str, String str2) {
        return a(InternalConfig.Factory.a().i(str, str2).a(), str);
    }

    public static void e(String str, Class<? extends Signer> cls) {
        if (str != null) {
            if (cls != null) {
                f4960a.put(str, cls);
                return;
            }
            throw new IllegalArgumentException("signerClass cannot be null");
        }
        throw new IllegalArgumentException("signerType cannot be null");
    }
}
