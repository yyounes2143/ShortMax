package androidx.webkit;

import androidx.webkit.WebViewCompat;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
@WebViewCompat.ExperimentalAsyncStartUp
/* loaded from: classes2.dex */
public final class WebViewStartUpConfig {
    private final Executor mExecutor;
    private final Set<String> mProfilesToLoadDuringStartup;
    private final boolean mShouldRunUiThreadStartUpTasks;

    @WebViewCompat.ExperimentalAsyncStartUp
    /* loaded from: classes2.dex */
    public static final class Builder {
        private final Executor mExecutor;
        private boolean mShouldRunUiThreadStartUpTasks = true;
        private Set<String> mProfilesToLoadDuringStartup = null;

        public Builder(Executor executor) {
            this.mExecutor = executor;
        }

        public WebViewStartUpConfig build() {
            return new WebViewStartUpConfig(this.mExecutor, this.mShouldRunUiThreadStartUpTasks, this.mProfilesToLoadDuringStartup);
        }

        public Builder setProfilesToLoadDuringStartup(Set<String> set) {
            if (this.mShouldRunUiThreadStartUpTasks) {
                this.mProfilesToLoadDuringStartup = new HashSet(set);
                return this;
            }
            throw new IllegalArgumentException("Can't specify profiles to load without running UI thread startup tasks");
        }

        public Builder setShouldRunUiThreadStartUpTasks(boolean z10) {
            if (this.mProfilesToLoadDuringStartup != null && !z10) {
                throw new IllegalArgumentException("Can't specify profiles to load without running UI thread startup tasks");
            }
            this.mShouldRunUiThreadStartUpTasks = z10;
            return this;
        }
    }

    public Executor getBackgroundExecutor() {
        return this.mExecutor;
    }

    public Set<String> getProfilesToLoadDuringStartup() {
        return this.mProfilesToLoadDuringStartup;
    }

    public boolean shouldRunUiThreadStartUpTasks() {
        return this.mShouldRunUiThreadStartUpTasks;
    }

    private WebViewStartUpConfig(Executor executor, boolean z10, Set<String> set) {
        this.mExecutor = executor;
        this.mShouldRunUiThreadStartUpTasks = z10;
        this.mProfilesToLoadDuringStartup = set;
    }
}
