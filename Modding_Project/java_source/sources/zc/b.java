package zc;

import com.android.billingclient.api.UserChoiceDetails;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonChoiceDetails.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f71563d = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f71564a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f71565b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f71566c;

    /* compiled from: CommonChoiceDetails.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final b a(@NotNull UserChoiceDetails.Product data) {
            Intrinsics.checkNotNullParameter(data, "data");
            String id2 = data.getId();
            Intrinsics.checkNotNullExpressionValue(id2, "getId(...)");
            String type = data.getType();
            Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
            return new b(id2, type, data.getOfferToken());
        }

        private a() {
        }
    }

    public b(@NotNull String id2, @NotNull String type, @Nullable String str) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        this.f71564a = id2;
        this.f71565b = type;
        this.f71566c = str;
    }
}
