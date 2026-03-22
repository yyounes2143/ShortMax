package androidx.credentials;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CredentialManagerCallback.kt */
@Metadata
/* loaded from: classes.dex */
public interface CredentialManagerCallback<R, E> {
    void onError(@NotNull E e10);

    void onResult(R r10);
}
