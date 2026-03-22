package pm;

import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.LabelData;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sq.g;
/* compiled from: PrivacySheetDataMapper.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final a f64913a;

    public c(@NotNull a labelDataMapper) {
        Intrinsics.checkNotNullParameter(labelDataMapper, "labelDataMapper");
        this.f64913a = labelDataMapper;
    }

    @Nullable
    public final PrivacySheetData a(@NotNull Ad.Display.Native.Asset data) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            String value = data.getData().getValue();
            Intrinsics.checkNotNullExpressionValue(value, "data.data.value");
            PrivacySheetParams c10 = g.c(value);
            if (c10 == null) {
                return null;
            }
            a aVar = this.f64913a;
            Ad.Display.Native.Asset.LabelAsset label = data.getLabel();
            Intrinsics.checkNotNullExpressionValue(label, "data.label");
            LabelData a10 = aVar.a(label);
            if (a10 == null) {
                return null;
            }
            return new PrivacySheetData(a10, c10);
        } catch (Throwable unused) {
            return null;
        }
    }
}
