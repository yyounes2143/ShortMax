package g4;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageTranscodeResult.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f52200a;

    public b(int i10) {
        this.f52200a = i10;
    }

    public final int a() {
        return this.f52200a;
    }

    @NotNull
    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(null, "Status: %d", Arrays.copyOf(new Object[]{Integer.valueOf(this.f52200a)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }
}
