package v7;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzajb;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.FacebookAuthCredential;
import com.google.firebase.auth.GithubAuthCredential;
import com.google.firebase.auth.GoogleAuthCredential;
import com.google.firebase.auth.PlayGamesAuthCredential;
import com.google.firebase.auth.TwitterAuthCredential;
import com.google.firebase.auth.zze;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class v0 {
    @NonNull
    public static zzajb a(AuthCredential authCredential, @Nullable String str) {
        Preconditions.checkNotNull(authCredential);
        if (authCredential instanceof GoogleAuthCredential) {
            return GoogleAuthCredential.w((GoogleAuthCredential) authCredential, str);
        }
        if (authCredential instanceof FacebookAuthCredential) {
            return FacebookAuthCredential.w((FacebookAuthCredential) authCredential, str);
        }
        if (authCredential instanceof TwitterAuthCredential) {
            return TwitterAuthCredential.w((TwitterAuthCredential) authCredential, str);
        }
        if (authCredential instanceof GithubAuthCredential) {
            return GithubAuthCredential.w((GithubAuthCredential) authCredential, str);
        }
        if (authCredential instanceof PlayGamesAuthCredential) {
            return PlayGamesAuthCredential.w((PlayGamesAuthCredential) authCredential, str);
        }
        if (authCredential instanceof zze) {
            return zze.x((zze) authCredential, str);
        }
        throw new IllegalArgumentException("Unsupported credential type.");
    }
}
