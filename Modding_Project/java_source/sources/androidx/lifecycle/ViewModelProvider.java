package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import androidx.lifecycle.viewmodel.ViewModelProviderImpl;
import androidx.lifecycle.viewmodel.internal.DefaultViewModelProviderFactory;
import androidx.lifecycle.viewmodel.internal.JvmViewModelProviders;
import androidx.lifecycle.viewmodel.internal.ViewModelProviders;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewModelProvider.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nViewModelProvider.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelProvider.android.kt\nandroidx/lifecycle/ViewModelProvider\n+ 2 CreationExtras.kt\nandroidx/lifecycle/viewmodel/CreationExtras$Companion\n*L\n1#1,356:1\n68#2:357\n*S KotlinDebug\n*F\n+ 1 ViewModelProvider.android.kt\nandroidx/lifecycle/ViewModelProvider\n*L\n353#1:357\n*E\n"})
/* loaded from: classes2.dex */
public class ViewModelProvider {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final CreationExtras.Key<String> VIEW_MODEL_KEY;
    @NotNull
    private final ViewModelProviderImpl impl;

    /* compiled from: ViewModelProvider.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ViewModelProvider create$default(Companion companion, ViewModelStoreOwner viewModelStoreOwner, Factory factory, CreationExtras creationExtras, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                factory = ViewModelProviders.INSTANCE.getDefaultFactory$lifecycle_viewmodel_release(viewModelStoreOwner);
            }
            if ((i10 & 4) != 0) {
                creationExtras = ViewModelProviders.INSTANCE.getDefaultCreationExtras$lifecycle_viewmodel_release(viewModelStoreOwner);
            }
            return companion.create(viewModelStoreOwner, factory, creationExtras);
        }

        @NotNull
        public final ViewModelProvider create(@NotNull ViewModelStoreOwner owner, @NotNull Factory factory, @NotNull CreationExtras extras) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return new ViewModelProvider(owner.getViewModelStore(), factory, extras);
        }

        private Companion() {
        }

        @NotNull
        public final ViewModelProvider create(@NotNull ViewModelStore store, @NotNull Factory factory, @NotNull CreationExtras extras) {
            Intrinsics.checkNotNullParameter(store, "store");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return new ViewModelProvider(store, factory, extras);
        }

        public static /* synthetic */ ViewModelProvider create$default(Companion companion, ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                factory = DefaultViewModelProviderFactory.INSTANCE;
            }
            if ((i10 & 4) != 0) {
                creationExtras = CreationExtras.Empty.INSTANCE;
            }
            return companion.create(viewModelStore, factory, creationExtras);
        }
    }

    /* compiled from: ViewModelProvider.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Factory {
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;

        /* compiled from: ViewModelProvider.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            @NotNull
            public final Factory from(@NotNull ViewModelInitializer<?>... initializers) {
                Intrinsics.checkNotNullParameter(initializers, "initializers");
                return ViewModelProviders.INSTANCE.createInitializerFactory$lifecycle_viewmodel_release((ViewModelInitializer[]) Arrays.copyOf(initializers, initializers.length));
            }
        }

        @NotNull
        static Factory from(@NotNull ViewModelInitializer<?>... viewModelInitializerArr) {
            return Companion.from(viewModelInitializerArr);
        }

        @NotNull
        default <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            return (T) ViewModelProviders.INSTANCE.unsupportedCreateViewModel$lifecycle_viewmodel_release();
        }

        @NotNull
        default <T extends ViewModel> T create(@NotNull Class<T> modelClass, @NotNull CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return (T) create(modelClass);
        }

        @NotNull
        default <T extends ViewModel> T create(@NotNull KClass<T> modelClass, @NotNull CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return (T) create(zs.a.b(modelClass), extras);
        }
    }

    /* compiled from: ViewModelProvider.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static class NewInstanceFactory implements Factory {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        public static final CreationExtras.Key<String> VIEW_MODEL_KEY = ViewModelProvider.VIEW_MODEL_KEY;
        @Nullable
        private static NewInstanceFactory _instance;

        /* compiled from: ViewModelProvider.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
            @NotNull
            public final NewInstanceFactory getInstance() {
                if (NewInstanceFactory._instance == null) {
                    NewInstanceFactory._instance = new NewInstanceFactory();
                }
                NewInstanceFactory newInstanceFactory = NewInstanceFactory._instance;
                Intrinsics.checkNotNull(newInstanceFactory);
                return newInstanceFactory;
            }

            private Companion() {
            }

            public static /* synthetic */ void getInstance$annotations() {
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public static final NewInstanceFactory getInstance() {
            return Companion.getInstance();
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            return (T) JvmViewModelProviders.INSTANCE.createViewModel(modelClass);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull Class<T> modelClass, @NotNull CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return (T) create(modelClass);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull KClass<T> modelClass, @NotNull CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return (T) create(zs.a.b(modelClass), extras);
        }
    }

    /* compiled from: ViewModelProvider.android.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static class OnRequeryFactory {
        public void onRequery(@NotNull ViewModel viewModel) {
            Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        }
    }

    static {
        CreationExtras.Companion companion = CreationExtras.Companion;
        VIEW_MODEL_KEY = new CreationExtras.Key<String>() { // from class: androidx.lifecycle.ViewModelProvider$special$$inlined$Key$1
        };
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(@NotNull ViewModelStore store, @NotNull Factory factory) {
        this(store, factory, null, 4, null);
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
    }

    @NotNull
    public static final ViewModelProvider create(@NotNull ViewModelStore viewModelStore, @NotNull Factory factory, @NotNull CreationExtras creationExtras) {
        return Companion.create(viewModelStore, factory, creationExtras);
    }

    @MainThread
    @NotNull
    public final <T extends ViewModel> T get(@NotNull KClass<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) ViewModelProviderImpl.getViewModel$lifecycle_viewmodel_release$default(this.impl, modelClass, null, 2, null);
    }

    /* compiled from: ViewModelProvider.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nViewModelProvider.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelProvider.android.kt\nandroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory\n+ 2 CreationExtras.kt\nandroidx/lifecycle/viewmodel/CreationExtras$Companion\n*L\n1#1,356:1\n68#2:357\n*S KotlinDebug\n*F\n+ 1 ViewModelProvider.android.kt\nandroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory\n*L\n332#1:357\n*E\n"})
    /* loaded from: classes2.dex */
    public static class AndroidViewModelFactory extends NewInstanceFactory {
        @NotNull
        public static final CreationExtras.Key<Application> APPLICATION_KEY;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private static AndroidViewModelFactory _instance;
        @Nullable
        private final Application application;

        /* compiled from: ViewModelProvider.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final AndroidViewModelFactory getInstance(@NotNull Application application) {
                Intrinsics.checkNotNullParameter(application, "application");
                if (AndroidViewModelFactory._instance == null) {
                    AndroidViewModelFactory._instance = new AndroidViewModelFactory(application);
                }
                AndroidViewModelFactory androidViewModelFactory = AndroidViewModelFactory._instance;
                Intrinsics.checkNotNull(androidViewModelFactory);
                return androidViewModelFactory;
            }

            private Companion() {
            }
        }

        static {
            CreationExtras.Companion companion = CreationExtras.Companion;
            APPLICATION_KEY = new CreationExtras.Key<Application>() { // from class: androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1
            };
        }

        private AndroidViewModelFactory(Application application, int i10) {
            this.application = application;
        }

        @NotNull
        public static final AndroidViewModelFactory getInstance(@NotNull Application application) {
            return Companion.getInstance(application);
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull Class<T> modelClass, @NotNull CreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            if (this.application != null) {
                return (T) create(modelClass);
            }
            Application application = (Application) extras.get(APPLICATION_KEY);
            if (application != null) {
                return (T) create(modelClass, application);
            }
            if (!AndroidViewModel.class.isAssignableFrom(modelClass)) {
                return (T) super.create(modelClass);
            }
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }

        public AndroidViewModelFactory() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AndroidViewModelFactory(@NotNull Application application) {
            this(application, 0);
            Intrinsics.checkNotNullParameter(application, "application");
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        @NotNull
        public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Application application = this.application;
            if (application != null) {
                return (T) create(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        private final <T extends ViewModel> T create(Class<T> cls, Application application) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    T newInstance = cls.getConstructor(Application.class).newInstance(application);
                    Intrinsics.checkNotNull(newInstance);
                    return newInstance;
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e10);
                } catch (InstantiationException e11) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e11);
                } catch (NoSuchMethodException e12) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e12);
                } catch (InvocationTargetException e13) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e13);
                }
            }
            return (T) super.create(cls);
        }
    }

    private ViewModelProvider(ViewModelProviderImpl viewModelProviderImpl) {
        this.impl = viewModelProviderImpl;
    }

    @NotNull
    public static final ViewModelProvider create(@NotNull ViewModelStoreOwner viewModelStoreOwner, @NotNull Factory factory, @NotNull CreationExtras creationExtras) {
        return Companion.create(viewModelStoreOwner, factory, creationExtras);
    }

    @NotNull
    public <T extends ViewModel> T get(@NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) get(zs.a.d(modelClass));
    }

    @MainThread
    @NotNull
    public final <T extends ViewModel> T get(@NotNull String key, @NotNull KClass<T> modelClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) this.impl.getViewModel$lifecycle_viewmodel_release(modelClass, key);
    }

    public /* synthetic */ ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewModelStore, factory, (i10 & 4) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }

    @NotNull
    public <T extends ViewModel> T get(@NotNull String key, @NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) this.impl.getViewModel$lifecycle_viewmodel_release(zs.a.d(modelClass), key);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(@NotNull ViewModelStore store, @NotNull Factory factory, @NotNull CreationExtras defaultCreationExtras) {
        this(new ViewModelProviderImpl(store, factory, defaultCreationExtras));
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(defaultCreationExtras, "defaultCreationExtras");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ViewModelProvider(@org.jetbrains.annotations.NotNull androidx.lifecycle.ViewModelStoreOwner r4) {
        /*
            r3 = this;
            java.lang.String r0 = "owner"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.lifecycle.ViewModelStore r0 = r4.getViewModelStore()
            androidx.lifecycle.viewmodel.internal.ViewModelProviders r1 = androidx.lifecycle.viewmodel.internal.ViewModelProviders.INSTANCE
            androidx.lifecycle.ViewModelProvider$Factory r2 = r1.getDefaultFactory$lifecycle_viewmodel_release(r4)
            androidx.lifecycle.viewmodel.CreationExtras r4 = r1.getDefaultCreationExtras$lifecycle_viewmodel_release(r4)
            r3.<init>(r0, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.ViewModelProvider.<init>(androidx.lifecycle.ViewModelStoreOwner):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(@NotNull ViewModelStoreOwner owner, @NotNull Factory factory) {
        this(owner.getViewModelStore(), factory, ViewModelProviders.INSTANCE.getDefaultCreationExtras$lifecycle_viewmodel_release(owner));
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(factory, "factory");
    }
}
