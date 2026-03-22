package androidx.credentials.playservices;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CredentialProviderMetadataHolder.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class CredentialProviderMetadataHolder extends Service {
    @NotNull
    private final LocalBinder binder = new LocalBinder();

    /* compiled from: CredentialProviderMetadataHolder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class LocalBinder extends Binder {
        public LocalBinder() {
        }

        @NotNull
        public final CredentialProviderMetadataHolder getService() {
            return CredentialProviderMetadataHolder.this;
        }
    }

    @Override // android.app.Service
    @NotNull
    public IBinder onBind(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return this.binder;
    }
}
