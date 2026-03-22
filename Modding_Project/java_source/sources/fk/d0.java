package fk;

import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d0 f51721a = new d0();

    private d0() {
    }

    @NotNull
    public final String a(int i10) {
        Random random = new Random();
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".charAt(random.nextInt(62)));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }
}
