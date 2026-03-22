package com.facebook;

import com.facebook.internal.FeatureManager;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookException.kt */
@Metadata
/* loaded from: classes3.dex */
public class FacebookException extends RuntimeException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f14817a = new a(null);

    /* compiled from: FacebookException.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public FacebookException() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(String str, boolean z10) {
        if (z10) {
            try {
                p4.e.g(str);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        String message = getMessage();
        if (message == null) {
            return "";
        }
        return message;
    }

    public FacebookException(@Nullable final String str) {
        super(str);
        Random random = new Random();
        if (str == null || !v.G() || random.nextInt(100) <= 50) {
            return;
        }
        FeatureManager.a(FeatureManager.Feature.ErrorReport, new FeatureManager.a() { // from class: com.facebook.l
            @Override // com.facebook.internal.FeatureManager.a
            public final void a(boolean z10) {
                FacebookException.d(str, z10);
            }
        });
    }

    public FacebookException(@Nullable String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    public FacebookException(@Nullable Throwable th2) {
        super(th2);
    }
}
