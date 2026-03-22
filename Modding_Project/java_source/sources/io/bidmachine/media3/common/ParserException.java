package io.bidmachine.media3.common;

import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes8.dex */
public class ParserException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f55114a;

    /* renamed from: b  reason: collision with root package name */
    public final int f55115b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ParserException(@Nullable String str, @Nullable Throwable th2, boolean z10, int i10) {
        super(str, th2);
        this.f55114a = z10;
        this.f55115b = i10;
    }

    public static ParserException b(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 1);
    }

    public static ParserException d(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 0);
    }

    public static ParserException e(@Nullable String str, @Nullable Throwable th2) {
        return new ParserException(str, th2, true, 4);
    }

    public static ParserException f(@Nullable String str) {
        return new ParserException(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        String message = super.getMessage();
        StringBuilder sb2 = new StringBuilder();
        if (message != null) {
            str = message + " ";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("{contentIsMalformed=");
        sb2.append(this.f55114a);
        sb2.append(", dataType=");
        sb2.append(this.f55115b);
        sb2.append("}");
        return sb2.toString();
    }
}
