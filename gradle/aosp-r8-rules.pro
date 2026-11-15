-dontshrink
-dontobfuscate
-keep class ** { *; }
-dontwarn **
-keepattributes *

-assumevalues class * {
    @com.android.aconfig.annotations.AssumeFalseForR8 boolean *(...) return false;
}
-assumenosideeffects class * {
    @com.android.aconfig.annotations.AssumeFalseForR8 boolean *(...) return false;
}
-assumevalues class * {
    @com.android.aconfig.annotations.AssumeTrueForR8 boolean *(...) return true;
}
-assumenosideeffects class * {
    @com.android.aconfig.annotations.AssumeTrueForR8 boolean *(...) return true;
}

-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
    static void checkExpressionValueIsNotNull(java.lang.Object, java.lang.String);
    static void checkNotNullExpressionValue(java.lang.Object, java.lang.String);
    static void checkReturnedValueIsNotNull(java.lang.Object, java.lang.String, java.lang.String);
    static void checkReturnedValueIsNotNull(java.lang.Object, java.lang.String);
    static void checkFieldIsNotNull(java.lang.Object, java.lang.String, java.lang.String);
    static void checkFieldIsNotNull(java.lang.Object, java.lang.String);
    static void checkNotNull(java.lang.Object, java.lang.String);
    static void checkNotNullParameter(java.lang.Object, java.lang.String);
    static void throwUninitializedPropertyAccessException(java.lang.String);
}
