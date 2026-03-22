package com.unity3d.services.ads.offerwall;

import com.bytedance.vodsetting.Module;
import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import com.unity3d.services.core.log.DeviceLog;
import gt.g0;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.c;
import kt.d;
import kt.f;
import kt.g;
import org.jetbrains.annotations.NotNull;
/* compiled from: OfferwallAdapterBridge.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OfferwallAdapterBridge {
    @NotNull
    private final d<OfferwallEventData> _offerwallEventFlow;
    @NotNull
    private final f<OfferwallEventData> offerwallEventFlow;
    @NotNull
    private final HashMap<String, Object> placementsMap;
    @NotNull
    private final g0 scope;

    public OfferwallAdapterBridge(@NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        d<OfferwallEventData> b10 = g.b(0, 0, null, 7, null);
        this._offerwallEventFlow = b10;
        this.offerwallEventFlow = c.c(b10);
        this.placementsMap = new HashMap<>();
    }

    private final Object getPlacement(String str) {
        return Class.forName("com.tapjoy.Tapjoy").getDeclaredMethod("getPlacement", String.class, Class.forName("com.tapjoy.TJPlacementListener")).invoke(null, str, Proxy.newProxyInstance(Class.forName("com.tapjoy.TJPlacementListener").getClassLoader(), new Class[]{Class.forName("com.tapjoy.TJPlacementListener")}, tapjoyPlacementListener()));
    }

    private final String getPlacementName(Object obj) {
        return (String) obj.getClass().getDeclaredMethod("getName", new Class[0]).invoke(obj, new Object[0]);
    }

    private final InvocationHandler tapjoyPlacementListener() {
        return new InvocationHandler() { // from class: com.unity3d.services.ads.offerwall.a
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                Object tapjoyPlacementListener$lambda$0;
                tapjoyPlacementListener$lambda$0 = OfferwallAdapterBridge.tapjoyPlacementListener$lambda$0(OfferwallAdapterBridge.this, obj, method, objArr);
                return tapjoyPlacementListener$lambda$0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object tapjoyPlacementListener$lambda$0(OfferwallAdapterBridge this$0, Object obj, Method method, Object[] objArr) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String name = method.getName();
        if (name != null) {
            boolean z10 = false;
            switch (name.hashCode()) {
                case -1508301783:
                    if (name.equals("onContentReady")) {
                        Object obj2 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj2, "args[0]");
                        String placementName = this$0.getPlacementName(obj2);
                        DeviceLog.debug("Placement content ready: " + placementName);
                        gt.g.d(this$0.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$3(this$0, placementName, null), 3, null);
                        break;
                    }
                    break;
                case -1482787952:
                    if (name.equals("onContentDismiss")) {
                        Object obj3 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj3, "args[0]");
                        String placementName2 = this$0.getPlacementName(obj3);
                        DeviceLog.debug("Placement content dismissed: " + placementName2);
                        gt.g.d(this$0.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$5(this$0, placementName2, null), 3, null);
                        break;
                    }
                    break;
                case 89925559:
                    if (name.equals("onContentShow")) {
                        Object obj4 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj4, "args[0]");
                        String placementName3 = this$0.getPlacementName(obj4);
                        DeviceLog.debug("Placement content shown: " + placementName3);
                        gt.g.d(this$0.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$4(this$0, placementName3, null), 3, null);
                        break;
                    }
                    break;
                case 1356881459:
                    if (name.equals("onRequestSuccess")) {
                        Object placementObj = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(placementObj, "placementObj");
                        String placementName4 = this$0.getPlacementName(placementObj);
                        Boolean bool = (Boolean) placementObj.getClass().getDeclaredMethod("isContentAvailable", new Class[0]).invoke(placementObj, new Object[0]);
                        if (bool != null) {
                            z10 = bool.booleanValue();
                        }
                        DeviceLog.debug("Placement request succeeded: " + placementName4 + " - isContentAvailable: " + z10);
                        gt.g.d(this$0.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$1(z10, this$0, placementName4, null), 3, null);
                        break;
                    }
                    break;
                case 2137477050:
                    if (name.equals("onRequestFailure")) {
                        Object obj5 = objArr[0];
                        Intrinsics.checkNotNullExpressionValue(obj5, "args[0]");
                        String placementName5 = this$0.getPlacementName(obj5);
                        HashMap<String, Object> hashMap = this$0.placementsMap;
                        if (placementName5 == null) {
                            str = "";
                        } else {
                            str = placementName5;
                        }
                        hashMap.remove(str);
                        Object obj6 = objArr[1];
                        DeviceLog.error("Placement request failed: " + placementName5 + " - errorCode: " + ((Integer) obj6.getClass().getField(Module.ResponseKey.Code).get(obj6)) + ", errorMessage: " + ((String) obj6.getClass().getField("message").get(obj6)));
                        gt.g.d(this$0.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$2(this$0, placementName5, null), 3, null);
                        break;
                    }
                    break;
            }
        }
        return null;
    }

    @NotNull
    public final f<OfferwallEventData> getOfferwallEventFlow() {
        return this.offerwallEventFlow;
    }

    @NotNull
    public final String getVersion() {
        try {
            String str = (String) Class.forName("com.tapjoy.Tapjoy").getDeclaredMethod(MobileAdsBridge.versionMethodName, new Class[0]).invoke(null, new Object[0]);
            if (str == null) {
                return "0.0.0";
            }
            return str;
        } catch (Exception unused) {
            return "0.0.0";
        }
    }

    public final boolean isAdReady(@NotNull String placementName) {
        Method method;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Object placement = getPlacement(placementName);
        Object obj = null;
        if (placement != null) {
            method = placement.getClass().getDeclaredMethod("isContentReady", new Class[0]);
        } else {
            method = null;
        }
        if (method != null) {
            obj = method.invoke(placement, new Object[0]);
        }
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean isConnected() {
        try {
            Boolean bool = (Boolean) Class.forName("com.tapjoy.Tapjoy").getDeclaredMethod("isConnected", new Class[0]).invoke(null, new Object[0]);
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public final void loadAd(@NotNull String placementName) {
        Method method;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Object placement = getPlacement(placementName);
        this.placementsMap.put(placementName, placement);
        if (placement != null) {
            method = placement.getClass().getDeclaredMethod("requestContent", new Class[0]);
        } else {
            method = null;
        }
        if (method != null) {
            method.invoke(placement, new Object[0]);
        }
    }

    public final void showAd(@NotNull String placementName) {
        Method method;
        Object obj;
        boolean z10;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Object obj2 = this.placementsMap.get(placementName);
        Method method2 = null;
        if (obj2 != null) {
            method = obj2.getClass().getDeclaredMethod("isContentAvailable", new Class[0]);
        } else {
            method = null;
        }
        if (method != null) {
            obj = method.invoke(obj2, new Object[0]);
        } else {
            obj = null;
        }
        Boolean bool = (Boolean) obj;
        if (bool != null) {
            z10 = bool.booleanValue();
        } else {
            z10 = false;
        }
        if (!z10) {
            gt.g.d(this.scope, null, null, new OfferwallAdapterBridge$showAd$1(this, placementName, null), 3, null);
        } else {
            if (obj2 != null) {
                method2 = obj2.getClass().getDeclaredMethod("showContent", new Class[0]);
            }
            if (method2 != null) {
                method2.invoke(obj2, new Object[0]);
            }
        }
        this.placementsMap.remove(placementName);
    }
}
