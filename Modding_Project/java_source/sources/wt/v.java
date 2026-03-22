package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composers.kt\nkotlinx/serialization/json/internal/ComposerWithPrettyPrint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"})
/* loaded from: classes8.dex */
public final class v extends m {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final kotlinx.serialization.json.a f70354c;

    /* renamed from: d  reason: collision with root package name */
    private int f70355d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(@NotNull z writer, @NotNull kotlinx.serialization.json.a json) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(json, "json");
        this.f70354c = json;
    }

    @Override // wt.m
    public void b() {
        o(true);
        this.f70355d++;
    }

    @Override // wt.m
    public void c() {
        o(false);
        k("\n");
        int i10 = this.f70355d;
        for (int i11 = 0; i11 < i10; i11++) {
            k(this.f70354c.d().n());
        }
    }

    @Override // wt.m
    public void d() {
        if (a()) {
            o(false);
        } else {
            c();
        }
    }

    @Override // wt.m
    public void p() {
        f(' ');
    }

    @Override // wt.m
    public void q() {
        this.f70355d--;
    }
}
