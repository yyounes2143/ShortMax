package io.bidmachine.util;

import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import yq.s;
/* compiled from: Tag.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Tag {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58676a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f58677b;

    public Tag(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f58676a = name;
        this.f58677b = c.b(new Function0<String>() { // from class: io.bidmachine.util.Tag$tag$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                String str;
                StringBuilder sb2 = new StringBuilder();
                str = Tag.this.f58676a;
                sb2.append(str);
                sb2.append(" @");
                sb2.append(s.c(Tag.this));
                return sb2.toString();
            }
        });
    }

    private final String b() {
        return (String) this.f58677b.getValue();
    }

    @NotNull
    public String toString() {
        return b();
    }
}
