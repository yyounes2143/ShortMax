package androidx.webkit.internal;

import android.os.Build;
import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
/* loaded from: classes2.dex */
public class WebViewGlueCommunicator {
    private static final String GLUE_FACTORY_PROVIDER_FETCHER_CLASS = "org.chromium.support_lib_glue.SupportLibReflectionUtil";
    private static final String GLUE_FACTORY_PROVIDER_FETCHER_METHOD = "createWebViewProviderFactory";

    /* loaded from: classes2.dex */
    private static class LAZY_COMPAT_CONVERTER_HOLDER {
        static final WebkitToCompatConverter INSTANCE = new WebkitToCompatConverter(WebViewGlueCommunicator.getFactory().getWebkitToCompatConverter());

        private LAZY_COMPAT_CONVERTER_HOLDER() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class LAZY_FACTORY_HOLDER {
        static final WebViewProviderFactory INSTANCE = WebViewGlueCommunicator.createGlueProviderFactory();

        private LAZY_FACTORY_HOLDER() {
        }
    }

    private WebViewGlueCommunicator() {
    }

    static WebViewProviderFactory createGlueProviderFactory() {
        try {
            return new WebViewProviderFactoryAdapter((WebViewProviderFactoryBoundaryInterface) zt.a.a(WebViewProviderFactoryBoundaryInterface.class, fetchGlueProviderFactoryImpl()));
        } catch (ClassNotFoundException unused) {
            return new IncompatibleApkWebViewProviderFactory();
        } catch (IllegalAccessException e10) {
            e = e10;
            throw new RuntimeException(e);
        } catch (NoSuchMethodException e11) {
            e = e11;
            throw new RuntimeException(e);
        } catch (InvocationTargetException e12) {
            e = e12;
            throw new RuntimeException(e);
        }
    }

    private static InvocationHandler fetchGlueProviderFactoryImpl() throws IllegalAccessException, InvocationTargetException, ClassNotFoundException, NoSuchMethodException {
        return (InvocationHandler) Class.forName(GLUE_FACTORY_PROVIDER_FETCHER_CLASS, false, getWebViewClassLoader()).getDeclaredMethod(GLUE_FACTORY_PROVIDER_FETCHER_METHOD, new Class[0]).invoke(null, new Object[0]);
    }

    public static WebkitToCompatConverter getCompatConverter() {
        return LAZY_COMPAT_CONVERTER_HOLDER.INSTANCE;
    }

    public static WebViewProviderFactory getFactory() {
        return LAZY_FACTORY_HOLDER.INSTANCE;
    }

    public static ClassLoader getWebViewClassLoader() {
        if (Build.VERSION.SDK_INT >= 28) {
            return ApiHelperForP.getWebViewClassLoader();
        }
        return getWebViewProviderFactory().getClass().getClassLoader();
    }

    private static Object getWebViewProviderFactory() {
        try {
            Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", new Class[0]);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }
}
