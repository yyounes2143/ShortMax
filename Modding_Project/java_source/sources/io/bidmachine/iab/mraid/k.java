package io.bidmachine.iab.mraid;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public final class k {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final j f54618a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(@NonNull j jVar) {
        this.f54618a = jVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@Nullable String str) {
        if (str != null) {
            if (str.startsWith("sms")) {
                return this.f54618a.d();
            }
            if (str.startsWith("tel")) {
                return this.f54618a.f();
            }
            if (str.startsWith("calendar")) {
                return this.f54618a.b();
            }
            if (str.startsWith("storePicture")) {
                return this.f54618a.e();
            }
            return true;
        }
        return true;
    }
}
