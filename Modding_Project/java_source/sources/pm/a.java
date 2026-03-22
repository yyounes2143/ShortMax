package pm;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.NativeAssetPosition;
import io.bidmachine.LabelData;
import io.bidmachine.PositionData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.s;
/* compiled from: LabelDataMapper.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f64912a;

    public a(@NotNull b positionDataMapper) {
        Intrinsics.checkNotNullParameter(positionDataMapper, "positionDataMapper");
        this.f64912a = positionDataMapper;
    }

    @Nullable
    public final LabelData a(@NotNull Ad.Display.Native.Asset.LabelAsset data) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            b bVar = this.f64912a;
            NativeAssetPosition pos = data.getPos();
            Intrinsics.checkNotNullExpressionValue(pos, "data.pos");
            PositionData a10 = bVar.a(pos);
            if (a10 == null) {
                return null;
            }
            String content = data.getContent();
            Intrinsics.checkNotNullExpressionValue(content, "data.content");
            byte[] bytes = content.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] g10 = s.g(bytes, 0, 1, null);
            if (g10 == null) {
                return null;
            }
            Bitmap image = BitmapFactory.decodeByteArray(g10, 0, g10.length);
            Intrinsics.checkNotNullExpressionValue(image, "image");
            return new LabelData(data.getW(), data.getH(), image, a10);
        } catch (Throwable unused) {
            return null;
        }
    }
}
