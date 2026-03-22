package zc;

import com.android.billingclient.api.UserChoiceDetails;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import zc.b;
/* compiled from: CommonChoiceDetails.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f71570b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<b> f71571a;

    /* compiled from: CommonChoiceDetails.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCommonChoiceDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonChoiceDetails.kt\ncom/shorttv/aar/billing/bean/CommonChoiceDetails$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1557#2:23\n1628#2,3:24\n*S KotlinDebug\n*F\n+ 1 CommonChoiceDetails.kt\ncom/shorttv/aar/billing/bean/CommonChoiceDetails$Companion\n*L\n9#1:23\n9#1:24,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final d a(@NotNull UserChoiceDetails data) {
            Intrinsics.checkNotNullParameter(data, "data");
            List<UserChoiceDetails.Product> products = data.getProducts();
            Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
            List<UserChoiceDetails.Product> list = products;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (UserChoiceDetails.Product product : list) {
                b.a aVar = b.f71563d;
                Intrinsics.checkNotNull(product);
                arrayList.add(aVar.a(product));
            }
            return new d(arrayList);
        }

        private a() {
        }
    }

    public d(@NotNull List<b> mProducts) {
        Intrinsics.checkNotNullParameter(mProducts, "mProducts");
        this.f71571a = mProducts;
    }
}
