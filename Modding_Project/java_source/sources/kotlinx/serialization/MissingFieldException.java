package kotlinx.serialization;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SerializationExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class MissingFieldException extends SerializationException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f61923a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingFieldException(@NotNull List<String> missingFields, @Nullable String str, @Nullable Throwable th2) {
        super(str, th2);
        Intrinsics.checkNotNullParameter(missingFields, "missingFields");
        this.f61923a = missingFields;
    }

    @NotNull
    public final List<String> b() {
        return this.f61923a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MissingFieldException(@org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r3, @org.jetbrains.annotations.NotNull java.lang.String r4) {
        /*
            r2 = this;
            java.lang.String r0 = "missingFields"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "serialName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            int r0 = r3.size()
            r1 = 1
            if (r0 != r1) goto L37
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Field '"
            r0.append(r1)
            r1 = 0
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.append(r1)
            java.lang.String r1 = "' is required for type with serial name '"
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = "', but it was missing"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            goto L55
        L37:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Fields "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r1 = " are required for type with serial name '"
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = "', but they were missing"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
        L55:
            r0 = 0
            r2.<init>(r3, r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.MissingFieldException.<init>(java.util.List, java.lang.String):void");
    }
}
