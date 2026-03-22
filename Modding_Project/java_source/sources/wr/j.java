package wr;

import kotlin.Metadata;
import kotlin.text.StringsKt;
/* compiled from: HttpHeaders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j {
    public static final /* synthetic */ boolean a(char c10) {
        return b(c10);
    }

    public static final boolean b(char c10) {
        return StringsKt.a0("\"(),/:;<=>?@[\\]{}", c10, false, 2, null);
    }
}
