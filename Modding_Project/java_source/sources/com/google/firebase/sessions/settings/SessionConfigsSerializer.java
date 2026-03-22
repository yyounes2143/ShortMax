package com.google.firebase.sessions.settings;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SessionConfigs.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSessionConfigs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionConfigs.kt\ncom/google/firebase/sessions/settings/SessionConfigsSerializer\n+ 2 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,59:1\n147#2:60\n*S KotlinDebug\n*F\n+ 1 SessionConfigs.kt\ncom/google/firebase/sessions/settings/SessionConfigsSerializer\n*L\n49#1:60\n*E\n"})
/* loaded from: classes5.dex */
public final class SessionConfigsSerializer implements Serializer<a> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final SessionConfigsSerializer f21658a = new SessionConfigsSerializer();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a f21659b = new a(null, null, null, null, null);

    private SessionConfigsSerializer() {
    }

    @Override // androidx.datastore.core.Serializer
    @NotNull
    /* renamed from: a */
    public a getDefaultValue() {
        return f21659b;
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    /* renamed from: b */
    public Object writeTo(@NotNull a aVar, @NotNull OutputStream outputStream, @NotNull c<? super Unit> cVar) {
        outputStream.write(StringsKt.D(kotlinx.serialization.json.a.f61939d.a(a.Companion.serializer(), aVar)));
        return Unit.f60915a;
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    public Object readFrom(@NotNull InputStream inputStream, @NotNull c<? super a> cVar) {
        try {
            a.C0857a c0857a = kotlinx.serialization.json.a.f61939d;
            String C = StringsKt.C(ws.a.c(inputStream));
            c0857a.getSerializersModule();
            return (a) c0857a.b(a.Companion.serializer(), C);
        } catch (Exception e10) {
            throw new CorruptionException("Cannot parse session configs", e10);
        }
    }
}
