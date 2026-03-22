package com.moloco.sdk.internal.ortb.model;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.e;
@SourceDebugExtension({"SMAP\nPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Player.kt\ncom/moloco/sdk/internal/ortb/model/ColorSerializer\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,227:1\n470#2:228\n*S KotlinDebug\n*F\n+ 1 Player.kt\ncom/moloco/sdk/internal/ortb/model/ColorSerializer\n*L\n220#1:228\n*E\n"})
/* loaded from: classes6.dex */
public final class h implements KSerializer<Color> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f32377a = new h();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final SerialDescriptor f32378b = ut.k.c("Color", e.i.f68617a);

    public long a(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return ColorKt.Color(android.graphics.Color.parseColor(decoder.decodeString()));
    }

    public void b(@NotNull Encoder encoder, long j10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        throw new NotImplementedError("Color encoding is not supported");
    }

    @Override // st.c
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return Color.m1832boximpl(a(decoder));
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f32378b;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Color) obj).m1852unboximpl());
    }
}
