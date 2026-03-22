package com.google.firebase.sessions;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import j9.f0;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionData.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSessionData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionData.kt\ncom/google/firebase/sessions/SessionDataSerializer\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,59:1\n147#2:60\n*S KotlinDebug\n*F\n+ 1 SessionData.kt\ncom/google/firebase/sessions/SessionDataSerializer\n*L\n49#1:60\n*E\n"})
/* loaded from: classes5.dex */
public final class SessionDataSerializer implements Serializer<i> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final f0 f21504a;

    public SessionDataSerializer(@NotNull f0 sessionGenerator) {
        Intrinsics.checkNotNullParameter(sessionGenerator, "sessionGenerator");
        this.f21504a = sessionGenerator;
    }

    @Override // androidx.datastore.core.Serializer
    @NotNull
    /* renamed from: a */
    public i getDefaultValue() {
        return new i(this.f21504a.a(null), (k) null, (Map) null, 6, (DefaultConstructorMarker) null);
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    /* renamed from: b */
    public Object writeTo(@NotNull i iVar, @NotNull OutputStream outputStream, @NotNull rs.c<? super Unit> cVar) {
        outputStream.write(StringsKt.D(kotlinx.serialization.json.a.f61939d.a(i.Companion.serializer(), iVar)));
        return Unit.f60915a;
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    public Object readFrom(@NotNull InputStream inputStream, @NotNull rs.c<? super i> cVar) {
        try {
            a.C0857a c0857a = kotlinx.serialization.json.a.f61939d;
            String C = StringsKt.C(ws.a.c(inputStream));
            c0857a.getSerializersModule();
            return (i) c0857a.b(i.Companion.serializer(), C);
        } catch (Exception e10) {
            throw new CorruptionException("Cannot parse session data", e10);
        }
    }
}
