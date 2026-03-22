package com.google.android.play.core.integrity;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Task;
import java.util.Set;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public interface StandardIntegrityManager {

    /* compiled from: com.google.android.play:integrity@@1.4.0 */
    /* loaded from: classes5.dex */
    public static abstract class PrepareIntegrityTokenRequest {

        /* compiled from: com.google.android.play:integrity@@1.4.0 */
        /* loaded from: classes5.dex */
        public static abstract class Builder {
            public abstract PrepareIntegrityTokenRequest build();

            public abstract Builder setCloudProjectNumber(long j10);
        }

        public static Builder builder() {
            c cVar = new c();
            cVar.a(0);
            return cVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract int a();

        public abstract long b();
    }

    /* compiled from: com.google.android.play:integrity@@1.4.0 */
    /* loaded from: classes5.dex */
    public static abstract class StandardIntegrityToken {
        public abstract Task<Integer> showDialog(Activity activity, int i10);

        public abstract String token();
    }

    /* compiled from: com.google.android.play:integrity@@1.4.0 */
    /* loaded from: classes5.dex */
    public interface StandardIntegrityTokenProvider {
        Task<StandardIntegrityToken> request(StandardIntegrityTokenRequest standardIntegrityTokenRequest);
    }

    /* compiled from: com.google.android.play:integrity@@1.4.0 */
    /* loaded from: classes5.dex */
    public static abstract class StandardIntegrityTokenRequest {

        /* compiled from: com.google.android.play:integrity@@1.4.0 */
        /* loaded from: classes5.dex */
        public static abstract class Builder {
            public abstract StandardIntegrityTokenRequest build();

            public abstract Builder setRequestHash(@Nullable String str);

            public abstract Builder setVerdictOptOut(Set<Integer> set);
        }

        public static Builder builder() {
            f fVar = new f();
            fVar.setVerdictOptOut(com.google.android.play.integrity.internal.as.n());
            return fVar;
        }

        @Nullable
        public abstract String requestHash();

        public abstract Set<Integer> verdictOptOut();
    }

    Task<StandardIntegrityTokenProvider> prepareIntegrityToken(PrepareIntegrityTokenRequest prepareIntegrityTokenRequest);
}
