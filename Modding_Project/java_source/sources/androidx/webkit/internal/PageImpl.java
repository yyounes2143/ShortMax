package androidx.webkit.internal;

import androidx.webkit.Page;
import androidx.webkit.WebNavigationClient;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;
@WebNavigationClient.ExperimentalNavigationCallback
/* loaded from: classes2.dex */
public class PageImpl implements Page {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final WebViewPageBoundaryInterface mPageBoundaryInterface;

    private PageImpl(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        this.mPageBoundaryInterface = webViewPageBoundaryInterface;
    }

    public static Page forInvocationHandler(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) zt.a.a(WebViewPageBoundaryInterface.class, invocationHandler);
        Object orCreatePeer = webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.i0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object lambda$forInvocationHandler$0;
                lambda$forInvocationHandler$0 = PageImpl.lambda$forInvocationHandler$0(WebViewPageBoundaryInterface.this);
                return lambda$forInvocationHandler$0;
            }
        });
        Objects.requireNonNull(orCreatePeer);
        return (Page) orCreatePeer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$forInvocationHandler$0(WebViewPageBoundaryInterface webViewPageBoundaryInterface) throws Exception {
        return new PageImpl(webViewPageBoundaryInterface);
    }
}
