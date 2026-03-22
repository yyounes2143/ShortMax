package androidx.webkit.internal;

import android.os.Handler;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.internal.ApiFeature;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;
/* loaded from: classes2.dex */
public class WebMessagePortImpl extends WebMessagePortCompat {
    private WebMessagePortBoundaryInterface mBoundaryInterface;
    private WebMessagePort mFrameworksImpl;

    public WebMessagePortImpl(WebMessagePort webMessagePort) {
        this.mFrameworksImpl = webMessagePort;
    }

    public static WebMessage compatToFrameworkMessage(WebMessageCompat webMessageCompat) {
        return new WebMessage(webMessageCompat.getData(), compatToPorts(webMessageCompat.getPorts()));
    }

    public static WebMessagePort[] compatToPorts(WebMessagePortCompat[] webMessagePortCompatArr) {
        if (webMessagePortCompatArr == null) {
            return null;
        }
        int length = webMessagePortCompatArr.length;
        WebMessagePort[] webMessagePortArr = new WebMessagePort[length];
        for (int i10 = 0; i10 < length; i10++) {
            webMessagePortArr[i10] = webMessagePortCompatArr[i10].getFrameworkPort();
        }
        return webMessagePortArr;
    }

    public static WebMessageCompat frameworkMessageToCompat(WebMessage webMessage) {
        return new WebMessageCompat(webMessage.getData(), portsToCompat(webMessage.getPorts()));
    }

    private WebMessagePortBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = (WebMessagePortBoundaryInterface) zt.a.a(WebMessagePortBoundaryInterface.class, WebViewGlueCommunicator.getCompatConverter().convertWebMessagePort(this.mFrameworksImpl));
        }
        return this.mBoundaryInterface;
    }

    private WebMessagePort getFrameworksImpl() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = WebViewGlueCommunicator.getCompatConverter().convertWebMessagePort(Proxy.getInvocationHandler(this.mBoundaryInterface));
        }
        return this.mFrameworksImpl;
    }

    public static WebMessagePortCompat[] portsToCompat(WebMessagePort[] webMessagePortArr) {
        if (webMessagePortArr == null) {
            return null;
        }
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[webMessagePortArr.length];
        for (int i10 = 0; i10 < webMessagePortArr.length; i10++) {
            webMessagePortCompatArr[i10] = new WebMessagePortImpl(webMessagePortArr[i10]);
        }
        return webMessagePortCompatArr;
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void close() {
        getFrameworksImpl().close();
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public WebMessagePort getFrameworkPort() {
        return getFrameworksImpl();
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public InvocationHandler getInvocationHandler() {
        return Proxy.getInvocationHandler(getBoundaryInterface());
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void postMessage(WebMessageCompat webMessageCompat) {
        ApiFeature.M m10 = WebViewFeatureInternal.WEB_MESSAGE_PORT_POST_MESSAGE;
        if (webMessageCompat.getType() == 0) {
            getFrameworksImpl().postMessage(compatToFrameworkMessage(webMessageCompat));
        } else if (m10.isSupportedByWebView() && WebMessageAdapter.isMessagePayloadTypeSupportedByWebView(webMessageCompat.getType())) {
            getBoundaryInterface().postMessage(zt.a.c(new WebMessageAdapter(webMessageCompat)));
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void setWebMessageCallback(final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        if (WebViewFeatureInternal.WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK.isSupportedByWebView()) {
            getBoundaryInterface().setWebMessageCallback(zt.a.c(new WebMessageCallbackAdapter(webMessageCallbackCompat)));
        } else {
            getFrameworksImpl().setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.WebMessagePortImpl.1
                @Override // android.webkit.WebMessagePort.WebMessageCallback
                public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
                    webMessageCallbackCompat.onMessage(new WebMessagePortImpl(webMessagePort), WebMessagePortImpl.frameworkMessageToCompat(webMessage));
                }
            });
        }
    }

    public WebMessagePortImpl(InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (WebMessagePortBoundaryInterface) zt.a.a(WebMessagePortBoundaryInterface.class, invocationHandler);
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void setWebMessageCallback(Handler handler, final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        if (WebViewFeatureInternal.CREATE_WEB_MESSAGE_CHANNEL.isSupportedByWebView()) {
            getBoundaryInterface().setWebMessageCallback(zt.a.c(new WebMessageCallbackAdapter(webMessageCallbackCompat)), handler);
        } else {
            getFrameworksImpl().setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.WebMessagePortImpl.2
                @Override // android.webkit.WebMessagePort.WebMessageCallback
                public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
                    webMessageCallbackCompat.onMessage(new WebMessagePortImpl(webMessagePort), WebMessagePortImpl.frameworkMessageToCompat(webMessage));
                }
            }, handler);
        }
    }
}
