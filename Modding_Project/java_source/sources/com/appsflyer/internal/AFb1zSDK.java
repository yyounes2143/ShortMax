package com.appsflyer.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFa1bSDK;
import com.facebook.applinks.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes2.dex */
public final class AFb1zSDK implements AFa1cSDK {
    private boolean AFAdRevenueData;
    @NotNull
    private final AFc1hSDK getMonetizationNetwork;
    @Nullable
    Map<String, Object> getRevenue;

    public AFb1zSDK(@NotNull AFc1hSDK aFc1hSDK) {
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
        this.getMonetizationNetwork = aFc1hSDK;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    public final boolean AFAdRevenueData() {
        if (getCurrencyIso4217Code()) {
            Map<String, Object> map = this.getRevenue;
            if (map == null || map.isEmpty()) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    public final void getCurrencyIso4217Code(boolean z10) {
        this.AFAdRevenueData = z10;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    @Nullable
    public final Map<String, Object> getMediationNetwork() {
        return this.getRevenue;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    public final void getMonetizationNetwork() {
        Context context;
        if (!getCurrencyIso4217Code() || (context = this.getMonetizationNetwork.getMonetizationNetwork) == null) {
            return;
        }
        this.getRevenue = new LinkedHashMap();
        final AFa1zSDK aFa1zSDK = new AFa1zSDK(System.currentTimeMillis());
        try {
            com.facebook.v vVar = com.facebook.v.f16888a;
            com.facebook.v.class.getMethod("sdkInitialize", Context.class).invoke(null, context);
            int i10 = com.facebook.applinks.a.f15195h;
            Method method = com.facebook.applinks.a.class.getMethod("fetchDeferredAppLinkData", Context.class, String.class, a.b.class);
            Object newProxyInstance = Proxy.newProxyInstance(a.b.class.getClassLoader(), new Class[]{a.b.class}, new InvocationHandler() { // from class: com.appsflyer.internal.AFa1bSDK.5
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                    String str;
                    String str2;
                    String str3;
                    Bundle bundle;
                    if (method2.getName().equals("onDeferredAppLinkDataFetched")) {
                        Object obj2 = objArr[0];
                        if (obj2 != null) {
                            Bundle bundle2 = (Bundle) Bundle.class.cast(r1.getMethod("getArgumentBundle", new Class[0]).invoke(r1.cast(obj2), new Object[0]));
                            if (bundle2 != null) {
                                str2 = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                                str3 = bundle2.getString("target_url");
                                Bundle bundle3 = bundle2.getBundle("extras");
                                if (bundle3 != null && (bundle = bundle3.getBundle("deeplink_context")) != null) {
                                    str = bundle.getString("promo_code");
                                } else {
                                    str = null;
                                }
                            } else {
                                str = null;
                                str2 = null;
                                str3 = null;
                            }
                            AFa1uSDK aFa1uSDK = aFa1zSDK;
                            if (aFa1uSDK != null) {
                                aFa1uSDK.getRevenue(str2, str3, str);
                            }
                        } else {
                            AFa1uSDK aFa1uSDK2 = aFa1zSDK;
                            if (aFa1uSDK2 != null) {
                                aFa1uSDK2.getRevenue(null, null, null);
                            }
                        }
                        return null;
                    }
                    AFa1uSDK aFa1uSDK3 = aFa1zSDK;
                    if (aFa1uSDK3 != null) {
                        aFa1uSDK3.getRevenue("onDeferredAppLinkDataFetched invocation failed");
                    }
                    return null;
                }
            });
            String string = context.getString(context.getResources().getIdentifier("facebook_app_id", TypedValues.Custom.S_STRING, context.getPackageName()));
            if (TextUtils.isEmpty(string)) {
                aFa1zSDK.getRevenue("Facebook app id not defined in resources");
            } else {
                method.invoke(null, context, string, newProxyInstance);
            }
        } catch (ClassNotFoundException e10) {
            AFLogger.afErrorLogForExcManagerOnly("FB class missing error", e10);
            aFa1zSDK.getRevenue(e10.toString());
        } catch (IllegalAccessException e11) {
            AFLogger.afErrorLogForExcManagerOnly("FB illegal access", e11);
            aFa1zSDK.getRevenue(e11.toString());
        } catch (NoSuchMethodException e12) {
            AFLogger.afErrorLogForExcManagerOnly("FB method missing error", e12);
            aFa1zSDK.getRevenue(e12.toString());
        } catch (InvocationTargetException e13) {
            AFLogger.afErrorLogForExcManagerOnly("FB invocation error", e13);
            aFa1zSDK.getRevenue(e13.toString());
        }
    }

    private boolean getCurrencyIso4217Code() {
        return this.AFAdRevenueData;
    }

    /* loaded from: classes2.dex */
    public static final class AFa1zSDK implements AFa1bSDK.AFa1uSDK {
        private /* synthetic */ long getMonetizationNetwork;

        AFa1zSDK(long j10) {
            this.getMonetizationNetwork = j10;
        }

        @Override // com.appsflyer.internal.AFa1bSDK.AFa1uSDK
        public final void getRevenue(@Nullable String str, @Nullable String str2, @Nullable String str3) {
            Map<String, Object> map;
            if (str != null) {
                AFLogger.afInfoLog("Facebook Deferred AppLink data received: " + str);
                Map<String, Object> map2 = AFb1zSDK.this.getRevenue;
                if (map2 != null) {
                    map2.put("link", str);
                }
                if (str2 != null && (map = AFb1zSDK.this.getRevenue) != null) {
                    map.put("target_url", str2);
                }
                if (str3 != null) {
                    AFb1zSDK aFb1zSDK = AFb1zSDK.this;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("promo_code", str3);
                    linkedHashMap.put("deeplink_context", linkedHashMap2);
                    Map<String, Object> map3 = aFb1zSDK.getRevenue;
                    if (map3 != null) {
                        map3.put("extras", linkedHashMap);
                    }
                }
            } else {
                Map<String, Object> map4 = AFb1zSDK.this.getRevenue;
                if (map4 != null) {
                    map4.put("link", "");
                }
            }
            String valueOf = String.valueOf(System.currentTimeMillis() - this.getMonetizationNetwork);
            Map<String, Object> map5 = AFb1zSDK.this.getRevenue;
            if (map5 != null) {
                map5.put("ttr", valueOf);
            }
        }

        @Override // com.appsflyer.internal.AFa1bSDK.AFa1uSDK
        public final void getRevenue(@Nullable String str) {
            Map<String, Object> map = AFb1zSDK.this.getRevenue;
            if (map != null) {
                map.put("error", str);
            }
        }
    }
}
