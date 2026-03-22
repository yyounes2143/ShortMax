package com.facebook.binaryresource;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FileBinaryResource.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b implements com.facebook.binaryresource.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f15216b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final File f15217a;

    /* compiled from: FileBinaryResource.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFileBinaryResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileBinaryResource.kt\ncom/facebook/binaryresource/FileBinaryResource$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n1#2:54\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final b a(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return new b(file, null);
        }

        @Nullable
        public final b b(@Nullable File file) {
            if (file == null) {
                return null;
            }
            return new b(file, null);
        }

        private a() {
        }
    }

    public /* synthetic */ b(File file, DefaultConstructorMarker defaultConstructorMarker) {
        this(file);
    }

    @NotNull
    public static final b b(@NotNull File file) {
        return f15216b.a(file);
    }

    @Nullable
    public static final b c(@Nullable File file) {
        return f15216b.b(file);
    }

    @Override // com.facebook.binaryresource.a
    @NotNull
    public InputStream a() throws IOException {
        return new FileInputStream(this.f15217a);
    }

    @NotNull
    public final File d() {
        return this.f15217a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof b)) {
            return Intrinsics.areEqual(this.f15217a, ((b) obj).f15217a);
        }
        return false;
    }

    public int hashCode() {
        return this.f15217a.hashCode();
    }

    @Override // com.facebook.binaryresource.a
    public long size() {
        return this.f15217a.length();
    }

    private b(File file) {
        this.f15217a = file;
    }
}
