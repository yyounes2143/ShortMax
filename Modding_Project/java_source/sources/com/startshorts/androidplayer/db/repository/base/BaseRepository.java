package com.startshorts.androidplayer.db.repository.base;

import androidx.databinding.BaseObservable;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseRepository.kt */
@Metadata
/* loaded from: classes6.dex */
public class BaseRepository extends BaseObservable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f41505a = new a(null);

    /* compiled from: BaseRepository.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final void b(@Nullable String str) {
        Logger.f41511a.e(d(), str);
    }

    @NotNull
    public String d() {
        return "BaseRepository";
    }

    public final void e(@Nullable String str) {
        Logger.f41511a.h(d(), str);
    }
}
