package androidx.webkit;

import androidx.webkit.RestrictionAllowlist;
import androidx.webkit.WebViewBuilder;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;
@WebViewBuilder.Experimental
/* loaded from: classes2.dex */
public final class RestrictionAllowlist {
    private final List<ConfigTask> mConfigTasks;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private final List<ConfigTask> mConfigTasks = new ArrayList();
        private final List<String> mOriginPatterns;

        public Builder(Set<String> set) {
            this.mOriginPatterns = new ArrayList(set);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addJavaScriptInterface$0(Object obj, String str, WebViewBuilderBoundaryInterface.Config config) {
            config.addJavascriptInterface(obj, str, this.mOriginPatterns);
        }

        public Builder addJavaScriptInterface(final Object obj, final String str) {
            this.mConfigTasks.add(new ConfigTask() { // from class: androidx.webkit.a
                @Override // androidx.webkit.RestrictionAllowlist.ConfigTask
                public final void configure(WebViewBuilderBoundaryInterface.Config config) {
                    RestrictionAllowlist.Builder.this.lambda$addJavaScriptInterface$0(obj, str, config);
                }
            });
            return this;
        }

        public RestrictionAllowlist build() {
            return new RestrictionAllowlist(this.mConfigTasks);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface ConfigTask {
        void configure(WebViewBuilderBoundaryInterface.Config config);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void configure(WebViewBuilderBoundaryInterface.Config config) {
        for (ConfigTask configTask : this.mConfigTasks) {
            configTask.configure(config);
        }
    }

    private RestrictionAllowlist(List<ConfigTask> list) {
        this.mConfigTasks = list;
    }
}
