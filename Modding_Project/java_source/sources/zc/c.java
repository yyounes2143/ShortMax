package zc;

import com.android.billingclient.api.AccountIdentifiers;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonPurchase.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f71567c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f71568a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f71569b;

    /* compiled from: CommonPurchase.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final c a(@Nullable AccountIdentifiers accountIdentifiers) {
            if (accountIdentifiers == null) {
                return null;
            }
            return new c(accountIdentifiers.getObfuscatedAccountId(), accountIdentifiers.getObfuscatedProfileId());
        }

        private a() {
        }
    }

    public c(@Nullable String str, @Nullable String str2) {
        this.f71568a = str;
        this.f71569b = str2;
    }

    @Nullable
    public final String a() {
        return this.f71568a;
    }
}
